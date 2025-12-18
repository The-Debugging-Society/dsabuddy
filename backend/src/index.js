import express from "express";
import dotenv from "dotenv";
<<<<<<< HEAD
import cors from "cors";
import connectDB from "./config/db.js";
import routes from "./routes/index.js";
=======
import express from "express";
import cors from "cors";
import session from "express-session";
import passport from "passport";
import { connectDB } from "./config/db.js";
import authRoutes from "./routes/authRoutes.js";
import { Strategy as GoogleStrategy } from "passport-google-oauth20";
>>>>>>> 403f149db495ae53d2395af5c88816739dad0610

dotenv.config();

const app = express();

<<<<<<< HEAD
// DB
connectDB();

// Middleware
app.use(cors({
  origin: process.env.FRONTEND_URL || "http://localhost:5173",
  credentials: true,
}));

=======
// Connect to DB
connectDB();

// Middleware
app.use(
  cors({
    origin: [process.env.FRONTEND_URL],
    credentials: true,
  })
);
>>>>>>> 403f149db495ae53d2395af5c88816739dad0610
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Session setup
app.use(
  session({
    secret: process.env.SESSION_SECRET,
    resave: false,
    saveUninitialized: false,
  })
);

<<<<<<< HEAD
// Error handler
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: err.message });
});

const PORT = process.env.PORT || 5001;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
=======
// Initialize passport
app.use(passport.initialize());
app.use(passport.session());

// Passport config
passport.serializeUser((user, done) => done(null, user));
passport.deserializeUser((user, done) => done(null, user));

passport.use(
  new GoogleStrategy(
    {
      clientID: process.env.GOOGLE_CLIENT_ID,
      clientSecret: process.env.GOOGLE_CLIENT_SECRET,
      callbackURL: `${process.env.BASE_URL}/api/auth/google/callback`,
      scope: ["profile", "email"],
    },
    (accessToken, refreshToken, profile, done) => {
      console.log("Google Profile:", profile.displayName);
      return done(null, profile);
    }
  )
);

// Routes
app.use("/api/auth", authRoutes);

// Default route
app.get("/", (req, res) => res.send("✅ Server running"));

// Start server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`🚀 Server running on port ${PORT}`));
>>>>>>> 403f149db495ae53d2395af5c88816739dad0610
