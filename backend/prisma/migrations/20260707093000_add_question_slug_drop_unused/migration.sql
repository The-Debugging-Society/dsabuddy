-- Add globally-unique slug column for question routing
ALTER TABLE "Question" ADD COLUMN "slug" TEXT;

-- Backfill: LeetCode already has unique titleSlugs; Codeforces problem index
-- (sourceSlug) collides across contests, so prefix with the unique sourceId.
UPDATE "Question"
SET "slug" = CASE
  WHEN "sourcePlatform" = 'LEETCODE' THEN COALESCE("sourceSlug", "sourceId")
  WHEN "sourcePlatform" = 'CODEFORCES' THEN 'cf-' || lower("sourceId")
  WHEN "sourceId" IS NOT NULL THEN lower(COALESCE("sourcePlatform"::text, 'q')) || '-' || "sourceId"
  ELSE 'q-' || "id"
END
WHERE "slug" IS NULL;

CREATE UNIQUE INDEX "Question_slug_key" ON "Question"("slug");

-- Drop unused legacy tables (0 rows, no code references)
DROP TABLE "Account";
DROP TABLE "companypyq";
DROP TYPE "AuthProvider";
