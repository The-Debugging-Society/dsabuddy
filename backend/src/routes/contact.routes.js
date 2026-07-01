import { Router } from 'express';
import { submitContact } from '../controller/contact.controller.js';
import { contactLimiter } from '../middlewares/rateLimiter.js';

const router = Router();

router.post('/', contactLimiter, submitContact);

export default router;
