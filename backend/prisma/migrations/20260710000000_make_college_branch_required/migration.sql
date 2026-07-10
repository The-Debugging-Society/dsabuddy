-- Migration: make_college_branch_required
-- Backfill any existing NULLs before adding NOT NULL constraint + default

UPDATE "User" SET college = '' WHERE college IS NULL;
UPDATE "User" SET branch  = '' WHERE branch  IS NULL;

-- Alter columns to NOT NULL with default empty string

ALTER TABLE "User" ALTER COLUMN "college" SET NOT NULL;
ALTER TABLE "User" ALTER COLUMN "college" SET DEFAULT '';

ALTER TABLE "User" ALTER COLUMN "branch" SET NOT NULL;
ALTER TABLE "User" ALTER COLUMN "branch" SET DEFAULT '';
