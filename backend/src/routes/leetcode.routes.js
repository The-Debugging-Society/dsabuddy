import { Router } from "express";
import { getLeetcodeUser, getLeetcodeQuestion } from "../controller/leetcode.controller.js";

const router = Router();

router.get("/user/:username", getLeetcodeUser);
router.get("/questions/:titleSlug", getLeetcodeQuestion);

export default router;
