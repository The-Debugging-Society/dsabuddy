import express from "express";
import upload from "../config/multer.js"; 
const router = express.Router();

router.post("/upload", upload.single("file"), (req, res) => {
  try {
    
    const fileInfo = req.file; 
    if (!fileInfo) return res.status(400).json({ success: false, message: "No file uploaded" });

    return res.json({
      success: true,
      url: fileInfo.path,     
      filename: fileInfo.filename,
      raw: fileInfo,        
    });
  } catch (err) {
    console.error("Upload error:", err);
    return res.status(500).json({ success: false, message: "Upload failed" });
  }
});

export default router;