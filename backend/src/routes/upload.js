
import express from "express";
import upload from "../config/multer.js"; // adjust relative path if needed

const router = express.Router();

// Example: upload avatar or file
router.post("/upload", upload.single("file"), (req, res) => {
  try {
    // multer-storage-cloudinary stores the resulting file meta on req.file
    // path contains the URL
    const fileInfo = req.file; // check console.log(req.file) for full data
    if (!fileInfo) return res.status(400).json({ success: false, message: "No file uploaded" });

    return res.json({
      success: true,
      url: fileInfo.path,     // Cloudinary URL
      filename: fileInfo.filename,
      raw: fileInfo,          // full metadata (optional)
    });
  } catch (err) {
    console.error("Upload error:", err);
    return res.status(500).json({ success: false, message: "Upload failed" });
  }
});

export default router;
