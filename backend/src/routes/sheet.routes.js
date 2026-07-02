import { Router } from "express";
import { authMiddleware, ensureAuthenticated } from "../middlewares/auth.middleware.js";
import { validate } from "../middlewares/validate.middleware.js";
import {
  sheetSlugParamSchema,
  sheetProblemIdParamSchema,
  upsertSheetProgressBodySchema,
} from "../validation/api.validation.js";
import {
  listSheets,
  getSheetBySlug,
  upsertSheetProgress,
} from "../controller/sheet.controller.js";

const router = Router();

// Optional auth: sheets are viewable logged-out, but progress is merged when authed.
router.get("/", authMiddleware, listSheets);

router.put(
  "/problems/:problemId/progress",
  authMiddleware,
  ensureAuthenticated,
  validate({ params: sheetProblemIdParamSchema, body: upsertSheetProgressBodySchema }),
  upsertSheetProgress
);

router.get("/:slug", authMiddleware, validate({ params: sheetSlugParamSchema }), getSheetBySlug);

export default router;
