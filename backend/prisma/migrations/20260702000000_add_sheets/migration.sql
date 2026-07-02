-- CreateTable
CREATE TABLE "Sheet" (
    "id" TEXT NOT NULL,
    "slug" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "author" TEXT,
    "sourceUrl" TEXT,
    "coverImage" TEXT,
    "order" INTEGER NOT NULL DEFAULT 0,
    "isPublished" BOOLEAN NOT NULL DEFAULT true,
    "totalProblems" INTEGER NOT NULL DEFAULT 0,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Sheet_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SheetSection" (
    "id" TEXT NOT NULL,
    "sheetId" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "order" INTEGER NOT NULL DEFAULT 0,
    "parentId" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "SheetSection_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SheetProblem" (
    "id" TEXT NOT NULL,
    "sheetId" TEXT NOT NULL,
    "sectionId" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "order" INTEGER NOT NULL DEFAULT 0,
    "difficulty" "Difficulty",
    "articleUrl" TEXT,
    "youtubeUrl" TEXT,
    "practiceUrl" TEXT,
    "plusUrl" TEXT,
    "editorialUrl" TEXT,
    "questionId" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "SheetProblem_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserSheetProblem" (
    "userId" TEXT NOT NULL,
    "sheetProblemId" TEXT NOT NULL,
    "status" "UserQuestionStatus" NOT NULL DEFAULT 'UNSOLVED',
    "starred" BOOLEAN NOT NULL DEFAULT false,
    "note" TEXT,
    "solvedAt" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "UserSheetProblem_pkey" PRIMARY KEY ("userId","sheetProblemId")
);

-- CreateIndex
CREATE UNIQUE INDEX "Sheet_slug_key" ON "Sheet"("slug");

-- CreateIndex
CREATE INDEX "SheetSection_sheetId_idx" ON "SheetSection"("sheetId");

-- CreateIndex
CREATE INDEX "SheetSection_parentId_idx" ON "SheetSection"("parentId");

-- CreateIndex
CREATE INDEX "SheetProblem_sheetId_idx" ON "SheetProblem"("sheetId");

-- CreateIndex
CREATE INDEX "SheetProblem_sectionId_idx" ON "SheetProblem"("sectionId");

-- CreateIndex
CREATE INDEX "SheetProblem_questionId_idx" ON "SheetProblem"("questionId");

-- CreateIndex
CREATE INDEX "UserSheetProblem_sheetProblemId_idx" ON "UserSheetProblem"("sheetProblemId");

-- AddForeignKey
ALTER TABLE "SheetSection" ADD CONSTRAINT "SheetSection_sheetId_fkey" FOREIGN KEY ("sheetId") REFERENCES "Sheet"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SheetSection" ADD CONSTRAINT "SheetSection_parentId_fkey" FOREIGN KEY ("parentId") REFERENCES "SheetSection"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SheetProblem" ADD CONSTRAINT "SheetProblem_sheetId_fkey" FOREIGN KEY ("sheetId") REFERENCES "Sheet"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SheetProblem" ADD CONSTRAINT "SheetProblem_sectionId_fkey" FOREIGN KEY ("sectionId") REFERENCES "SheetSection"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SheetProblem" ADD CONSTRAINT "SheetProblem_questionId_fkey" FOREIGN KEY ("questionId") REFERENCES "Question"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserSheetProblem" ADD CONSTRAINT "UserSheetProblem_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserSheetProblem" ADD CONSTRAINT "UserSheetProblem_sheetProblemId_fkey" FOREIGN KEY ("sheetProblemId") REFERENCES "SheetProblem"("id") ON DELETE CASCADE ON UPDATE CASCADE;
