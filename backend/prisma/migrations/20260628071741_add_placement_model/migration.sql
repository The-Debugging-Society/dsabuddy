-- AlterTable
ALTER TABLE "Company" ADD COLUMN     "eligibility_criteria" TEXT,
ADD COLUMN     "oa_platform" TEXT,
ADD COLUMN     "other_info" TEXT,
ADD COLUMN     "rounds_info" TEXT,
ADD COLUMN     "top_topics" TEXT[];

-- AlterTable
ALTER TABLE "PlatformConnection" ADD COLUMN     "topicBreakdown" JSONB DEFAULT '{}';

-- CreateTable
CREATE TABLE "placements" (
    "id" TEXT NOT NULL,
    "companyId" TEXT,
    "company_name" TEXT NOT NULL,
    "role" TEXT NOT NULL,
    "ctc_lpa" DOUBLE PRECISION,
    "stipend_month" DOUBLE PRECISION,
    "type" TEXT,
    "category" TEXT,
    "eligible_branches" TEXT[],
    "min_cgpa" DOUBLE PRECISION,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "placements_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "placements_companyId_idx" ON "placements"("companyId");

-- AddForeignKey
ALTER TABLE "placements" ADD CONSTRAINT "placements_companyId_fkey" FOREIGN KEY ("companyId") REFERENCES "Company"("id") ON DELETE CASCADE ON UPDATE CASCADE;
