import { Resend } from "resend";
import dotenv from "dotenv";

dotenv.config();

const apiKey = process.env.RESEND_API_KEY;

if (!apiKey) {
  console.warn(
    "WARNING: RESEND_API_KEY is not configured. Email features disabled."
  );
}

const resend = apiKey ? new Resend(apiKey) : null;

export default resend;