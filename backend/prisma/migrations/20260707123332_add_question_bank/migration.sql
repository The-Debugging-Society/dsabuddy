-- CreateTable
CREATE TABLE "QuestionBank" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "displayName" TEXT,
    "difficulty" "Difficulty" NOT NULL,
    "leetcodeUrl" TEXT,
    "sourcePlatform" "Platform" NOT NULL,
    "sourceId" TEXT NOT NULL,
    "sourceSlug" TEXT,
    "slug" TEXT,
    "sourceUrl" TEXT,
    "sourceRating" INTEGER,
    "paidOnly" BOOLEAN,
    "acceptanceRate" DOUBLE PRECISION,
    "frequency" "Frequency",
    "statement" TEXT,
    "examples" JSONB,
    "constraints" JSONB,
    "acceptedCount" INTEGER,
    "submissionCount" INTEGER,
    "tags" TEXT[],
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "QuestionBank_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserQuestionBank" (
    "userId" TEXT NOT NULL,
    "questionId" TEXT NOT NULL,
    "status" "UserQuestionStatus" NOT NULL DEFAULT 'UNSOLVED',
    "solvedAt" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "UserQuestionBank_pkey" PRIMARY KEY ("userId","questionId")
);

-- CreateIndex
CREATE UNIQUE INDEX "QuestionBank_slug_key" ON "QuestionBank"("slug");

-- CreateIndex
CREATE INDEX "QuestionBank_sourcePlatform_idx" ON "QuestionBank"("sourcePlatform");

-- CreateIndex
CREATE UNIQUE INDEX "QuestionBank_sourcePlatform_sourceId_key" ON "QuestionBank"("sourcePlatform", "sourceId");

-- CreateIndex
CREATE INDEX "UserQuestionBank_questionId_idx" ON "UserQuestionBank"("questionId");

-- AddForeignKey
ALTER TABLE "UserQuestionBank" ADD CONSTRAINT "UserQuestionBank_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserQuestionBank" ADD CONSTRAINT "UserQuestionBank_questionId_fkey" FOREIGN KEY ("questionId") REFERENCES "QuestionBank"("id") ON DELETE CASCADE ON UPDATE CASCADE;
