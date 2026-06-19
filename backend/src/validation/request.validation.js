import { z } from 'zod';

export const signupPostRequestBodySchema = z.object({
    name: z.string(),
    userName: z.string(),
    email: z.string().email(),
    password: z.string().min(6),
})

export const loginPostRequestBodySchema = z.object({
    identifier: z.string().optional(),
    email: z.string().email().optional(),
    userName: z.string().optional(),
    password: z.string().min(6, "Password must be at least 6 characters"),
}).refine(data => !!(data.identifier || data.email || data.userName), {
    message: "Username or Email is required",
    path: ["identifier"]
});
