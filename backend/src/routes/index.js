import { Router } from "express";
import {
  login,
  logoutUser,
  me,
  signup,
  sendSignupOtp,
  updatePassword,
} from "../controller/auth.controller.js";
import { authMiddleware, ensureAuthenticated } from "../middlewares/auth.middleware.js";

const router = Router();

router.post('/send-signup-otp', sendSignupOtp);
router.post('/signup', signup);
router.post('/login', login);
router.post('/logout', logoutUser);
router.get('/me', authMiddleware, ensureAuthenticated, me);
router.post('/update-password', authMiddleware, ensureAuthenticated, updatePassword);

export default router;
