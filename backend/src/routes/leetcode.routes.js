import { Router } from "express";
import { getLeetcodeUser, getLeetcodeQuestion } from "../controller/leetcode.controller.js";
import { authMiddleware, ensureAuthenticated } from "../middlewares/auth.middleware.js";

const router = Router();

router.get("/user/:username", authMiddleware, ensureAuthenticated, getLeetcodeUser);
router.get("/questions/:titleSlug", authMiddleware, ensureAuthenticated, getLeetcodeQuestion);

export default router;
