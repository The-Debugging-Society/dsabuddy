import express from 'express';
import { sendEmail } from '../controller/mailerController.js';

const router = express.Router();

router.post('/send-email', async (req, res) => {
    const { to, subject, text } = req.body;

    try {
        const info = await sendEmail(to, subject, text);
        res.status(200).json({ message: 'Email sent', info });
    } catch (error) {
        res.status(500).json({ message: 'Error sending email', error: error.message });
    }
});

export default router;
