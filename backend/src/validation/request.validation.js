import { z } from 'zod';

export const signupPostRequestBodySchema = z.object({
    name: z.string(),
    userName: z.string(),
    email: z.string().email().refine(val => {
        const lower = val.toLowerCase();
        const parts = lower.split('@');
        if (parts.length !== 2) return false;
        const domain = parts[1];
        return (
            domain === "nsut.ac.in" ||
            domain === "dtu.ac.in" ||
            domain.endsWith(".nsut.ac.in") ||
            domain.endsWith(".dtu.ac.in")
        );
    }, {
        message: "Only NSUT (@nsut.ac.in) and DTU (@dtu.ac.in) email addresses are allowed."
    }),
    password: z.string().min(6),
    college: z.string().min(1, "College is required"),
    branch: z.string().min(1, "Branch is required"),
    year: z.string().optional(),
})

export const signupVerifyPostRequestBodySchema = signupPostRequestBodySchema.extend({
    otp: z.string().length(6, "OTP must be exactly 6 digits"),
})

export const loginPostRequestBodySchema = z.object({
    identifier: z.string().min(1, "Username or Email is required"),
    password: z.string().min(6, "Password must be at least 6 characters"),
})
