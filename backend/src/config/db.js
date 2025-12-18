import mongoose from "mongoose";

const connectDB = async () => {
  try {
    await mongoose.connect(process.env.MONGO_URI, {

    });
    console.log("✅ MongoDB Connected");
  } catch (error) {
<<<<<<< HEAD
    console.error("MongoDB connection error:", error.message);
=======
    console.error("❌ MongoDB Connection Failed:", error.message);
>>>>>>> 403f149db495ae53d2395af5c88816739dad0610
    process.exit(1);
  }
};

export default connectDB;
