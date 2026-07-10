import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
import {
  loginPostRequestBodySchema,
  signupPostRequestBodySchema,
  signupVerifyPostRequestBodySchema,
} from "../validation/request.validation.js";
import { prisma } from "../config/prismaClient.js";
import { enrichUserWithRanks } from "./user.controller.js";
import { sendWelcomeEmail, sendOtpEmail } from "./mailerController.js";
import { deriveGraduationYearFromEmail } from "../utils/graduationYear.js";
import redisClient from "../config/redis.js";

// Fallback in-memory store if Redis is unavailable
const memoryOtps = new Map();

const setOtp = async (email, otp) => {
  const key = `otp:${email.toLowerCase()}`;
  try {
    if (redisClient.status === "ready") {
      await redisClient.set(key, otp, "EX", 600);
      return;
    }
  } catch (err) {
    console.error("Redis set failed, falling back to memory:", err.message);
  }
  memoryOtps.set(key, { otp, expiresAt: Date.now() + 600000 });
};

const getOtp = async (email) => {
  const key = `otp:${email.toLowerCase()}`;
  try {
    if (redisClient.status === "ready") {
      return await redisClient.get(key);
    }
  } catch (err) {
    console.error("Redis get failed, falling back to memory:", err.message);
  }
  const entry = memoryOtps.get(key);
  if (!entry) return null;
  if (Date.now() > entry.expiresAt) {
    memoryOtps.delete(key);
    return null;
  }
  return entry.otp;
};

const delOtp = async (email) => {
  const key = `otp:${email.toLowerCase()}`;
  try {
    if (redisClient.status === "ready") {
      await redisClient.del(key);
      return;
    }
  } catch (err) {
    console.error("Redis del failed, falling back to memory:", err.message);
  }
  memoryOtps.delete(key);
};

export const sendSignupOtp = async (req, res) => {
  try {
    const validationResult = await signupPostRequestBodySchema.safeParseAsync(
      req.body
    );

    if (validationResult.error) {
      return res.status(400).json({ error: validationResult.error.format() });
    }

    const { email, userName, year: manualYear } = validationResult.data;

    // Check if email or username is already taken
    const existingByEmail = await prisma.user.findUnique({
      where: { email },
      select: { id: true },
    });

    const existingByUserName = await prisma.user.findUnique({
      where: { userName },
      select: { id: true },
    });

    if (existingByEmail || existingByUserName) {
      return res.status(400).json({ error: "User already exists" });
    }

    // Validate graduation year check
    let year = deriveGraduationYearFromEmail(email);
    if (!year) {
      if (manualYear) {
        const parsedYear = parseInt(manualYear, 10);
        if (isNaN(parsedYear) || parsedYear < 2020 || parsedYear > 2100) {
          return res.status(400).json({ error: "Please provide a valid graduation year between 2020 and 2100." });
        }
      } else {
        return res.status(400).json({ error: "Could not determine graduation year from email. Please provide graduation year manually." });
      }
    }

    // Generate 6-digit OTP
    const otp = Math.floor(100000 + Math.random() * 900000).toString();

    // Store OTP (uses Redis, fallbacks to memory)
    await setOtp(email, otp);

    // Send OTP email
    await sendOtpEmail(email, otp);

    return res.status(200).json({ message: "Verification code sent to your email." });
  } catch (error) {
    console.error("Error sending signup OTP:", error);
    return res.status(500).json({ error: "Failed to send verification code. Please try again." });
  }
};

export const signup = async (req, res) => {
  const validationResult = await signupVerifyPostRequestBodySchema.safeParseAsync(
    req.body
  );

  if (validationResult.error) {
    return res.status(400).json({ error: validationResult.error.format() });
  }

  const { name, userName, email, password, college, branch, year: manualYear, otp } = validationResult.data;

  // Verify OTP (uses Redis, fallbacks to memory)
  const savedOtp = await getOtp(email);

  if (!savedOtp) {
    return res.status(400).json({ error: "Verification code has expired or is invalid. Please request a new one." });
  }

  if (savedOtp !== otp) {
    return res.status(400).json({ error: "Invalid verification code. Please check and try again." });
  }

  // Delete OTP on successful verification
  await delOtp(email);

  const existingByEmail = await prisma.user.findUnique({
    where: { email },
    select: { id: true },
  });

  const existingByUserName = await prisma.user.findUnique({
    where: { userName },
    select: { id: true },
  });

  if (existingByEmail || existingByUserName) {
    return res.status(400).json({ error: "User already exists" });
  }

  let year = deriveGraduationYearFromEmail(email);
  if (!year) {
    if (manualYear) {
      const parsedYear = parseInt(manualYear, 10);
      if (isNaN(parsedYear) || parsedYear < 2020 || parsedYear > 2100) {
        return res.status(400).json({ error: "Please provide a valid graduation year between 2020 and 2100." });
      }
      year = String(parsedYear);
    } else {
      return res.status(400).json({ error: "Could not determine graduation year from email. Please provide graduation year manually." });
    }
  }

  const salt = await bcrypt.genSalt(10);
  const passwordHash = await bcrypt.hash(password, salt);

  const user = await prisma.user.create({
    data: {
      name,
      userName,
      email,
      passwordHash,
      salt,
      college,
      branch,
      year,
    },
    select: {
      id: true,
      name: true,
      userName: true,
      email: true,
      avatarUrl: true,
      branch: true,
      year: true,
      points: true,
      overallRank: true,
      branchChangesCount: true,
      createdAt: true,
    },
  });

  // Send welcome email asynchronously
  sendWelcomeEmail(user.email, user.name).catch((error) => {
    console.error("Failed to send welcome email to", user.email, error);
  });

  const token = jwt.sign(
    {
      userId: user.id,
      email: user.email,
      userName: user.userName,
    },
    process.env.JWT_SECRET,
    { expiresIn: '7d' }
  );

  res.cookie("token", token, {
    httpOnly: true,
    secure: process.env.NODE_ENV === "production",
    sameSite: "lax",
    maxAge: 7 * 24 * 60 * 60 * 1000,
    domain: process.env.NODE_ENV === "production" ? process.env.COOKIE_DOMAIN : undefined,
  });

  return res
    .status(201)
    .json({ message: "User created successfully", user });
};

export const login = async (req, res) => {
  const validationResult = await loginPostRequestBodySchema.safeParseAsync(
    req.body
  );

  if (validationResult.error) {
    return res.status(400).json({ error: validationResult.error.format() });
  }

  const { identifier, password } = validationResult.data;

  const existingUser = await prisma.user.findFirst({
    where: {
      OR: [
        { email: identifier },
        { userName: identifier },
      ],
    },
    select: {
      id: true,
      email: true,
      userName: true,
      passwordHash: true,
    },
  });

  if (!existingUser) {
    return res.status(404).json({ error: "User not found" });
  }

  if (!existingUser.passwordHash) {
    return res
      .status(400)
      .json({ error: "Password login not available for this account" });
  }

  const isPasswordValid = await bcrypt.compare(
    password,
    existingUser.passwordHash
  );

  if (!isPasswordValid) {
    return res.status(401).json({ error: "Invalid credentials" });
  }

  const payload = {
    userId: existingUser.id,
    email: existingUser.email,
    userName: existingUser.userName,
  };

  const token = jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: '7d' });

  res.cookie("token", token, {
    httpOnly: true,
    secure: process.env.NODE_ENV === "production",
    sameSite: "lax",
    maxAge: 7 * 24 * 60 * 60 * 1000,
    domain: process.env.NODE_ENV === "production" ? process.env.COOKIE_DOMAIN : undefined,
  });

  return res.status(200).json({ status: "success" });
};

export const logoutUser = async (req, res) => {
  try {
    res.clearCookie("token", {
      httpOnly: true,
      secure: process.env.NODE_ENV === "production",
      sameSite: "lax",
      domain: process.env.NODE_ENV === "production" ? process.env.COOKIE_DOMAIN : undefined,
    });
    return res
      .status(200)
      .json({ status: "success", message: "Logged out successfully" });
  } catch (error) {
    console.error("Logout error:", error);
    return res.status(500).json({ error: "Internal server error" });
  }
};

export const me = async (req, res) => {
  if (!req.user) {
    return res.status(401).json({ error: "Unauthorized" });
  }

  const userId = req.user.userId;

  const user = await prisma.user.findUnique({
    where: { id: userId },
    select: {
      id: true,
      name: true,
      userName: true,
      email: true,
      avatarUrl: true,
      college: true,
      branch: true,
      year: true,
      points: true,
      overallRank: true,
      branchChangesCount: true,
      socialLinks: true,
    },
  });

  if (!user) {
    return res.status(404).json({ error: "User not found" });
  }

  const enriched = await enrichUserWithRanks(user);
  return res.status(200).json({ user: enriched });
};

export const updatePassword = async (req, res) => {
  try {
    if (!req.user) {
      return res.status(401).json({ error: "Unauthorized" });
    }

    const { currentPassword, newPassword } = req.body;

    if (typeof newPassword !== "string" || newPassword.length < 6) {
      return res
        .status(400)
        .json({ error: "New password must be at least 6 characters long" });
    }

    const userId = req.user.userId;

    const user = await prisma.user.findUnique({
      where: { id: userId },
      select: { id: true, passwordHash: true },
    });

    if (!user) {
      return res.status(404).json({ error: "User not found" });
    }

    if (!user.passwordHash) {
      return res
        .status(400)
        .json({ error: "Password update not available for this account" });
    }

    const isPasswordValid = await bcrypt.compare(
      currentPassword,
      user.passwordHash
    );

    if (!isPasswordValid) {
      return res.status(400).json({ error: "Current password is incorrect" });
    }

    const isSamePassword = await bcrypt.compare(newPassword, user.passwordHash);

    if (isSamePassword) {
      return res.status(400).json({
        error: "New password must be different from current password",
      });
    }

    const newSalt = await bcrypt.genSalt(10);
    const newPasswordHash = await bcrypt.hash(newPassword, newSalt);

    await prisma.user.update({
      where: { id: user.id },
      data: {
        passwordHash: newPasswordHash,
        salt: newSalt,
      },
    });

    return res.status(200).json({
      message: "Password updated successfully",
    });
  } catch (error) {
    console.error("Update password error:", error);
    return res.status(500).json({
      error: "Failed to update password",
    });
  }
};

