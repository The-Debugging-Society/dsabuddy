import jwt from "jsonwebtoken";
import { prisma } from "../config/prismaClient.js";

/**
 * 
 * @param {import('express').Request} req 
 * @param {import('express').Response} res 
 * @param {import('express').NextFunction} next
 */

export const authMiddleware = async (req, res, next) => {
    try {
        let token = req.cookies?.token;
        if (!token) {
            return next();
        }

        const isBlacklisted = await prisma.blacklistedToken.findUnique({
            where: { token },
            select: { id: true },
        });

        if(isBlacklisted) {
            return res.status(401).json({ error: "You are not authorized" });
        }

        const decoded = jwt.verify(token, process.env.JWT_SECRET);

        req.user = decoded;
        return next();
    } catch (error) {
        return res.status(401).json({ error: "Invalid or expired token" });
    }
}

export const ensureAuthenticated = (req, res, next) => {
    if(!req.user) {
        return res.status(401).json({ error: "Unauthorized" });
    }
    next();
}