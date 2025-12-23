import express from "express";
import upload from "../config/multer.js";

const router = express.Router();

router.post(
  "/upload-avatar",
  upload.single("avatar"),
  (req, res) => {
    res.json({
      url: req.file.path,
      msg: "Upload successful",
    });
  }
);

export default router;