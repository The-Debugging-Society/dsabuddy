-- =====================================================
-- Striver A2Z DSA Sheet - Full Seed Migration SQL
-- Idempotent: safe to re-run in production.
-- =====================================================

-- SHEET
INSERT INTO "Sheet" ("id","slug","name","description","author","sourceUrl","totalProblems","order","isPublished","createdAt","updatedAt")
VALUES (
  'striver_a2z_sheet_id',
  'strivers-a2z-dsa-sheet',
  'Striver''s A2Z Sheet - Learn DSA from A to Z',
  'This course is made for people who want to learn DSA from A to Z for free in a well-organised and structured manner.',
  'Striver',
  'https://takeuforward.org/dsa/strivers-a2z-sheet-learn-dsa-a-to-z',
  474,
  1,
  true,
  NOW(),
  NOW()
)
ON CONFLICT ("slug") DO UPDATE
  SET "name"=EXCLUDED."name",
      "description"=EXCLUDED."description",
      "author"=EXCLUDED."author",
      "sourceUrl"=EXCLUDED."sourceUrl",
      "totalProblems"=EXCLUDED."totalProblems",
      "updatedAt"=NOW();

-- SECTIONS (top-level categories)
INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_1',
  'striver_a2z_sheet_id',
  'Learn the basics',
  1,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_9',
  'striver_a2z_sheet_id',
  'Learn Important Sorting Techniques',
  2,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_12',
  'striver_a2z_sheet_id',
  'Solve Problems on Arrays [Easy -> Medium -> Hard]',
  3,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_16',
  'striver_a2z_sheet_id',
  'Binary Search [1D, 2D Arrays, Search Space]',
  4,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_20',
  'striver_a2z_sheet_id',
  'Strings [Basic and Medium]',
  5,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_23',
  'striver_a2z_sheet_id',
  'Learn LinkedList [Single LL, Double LL, Medium, Hard Problems]',
  6,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_29',
  'striver_a2z_sheet_id',
  'Recursion [PatternWise]',
  7,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_33',
  'striver_a2z_sheet_id',
  'Bit Manipulation [Concepts & Problems]',
  8,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_37',
  'striver_a2z_sheet_id',
  'Stack and Queues [Learning, Pre-In-Post-fix, Monotonic Stack, Implementation]',
  9,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_42',
  'striver_a2z_sheet_id',
  'Sliding Window & Two Pointer Combined Problems',
  10,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_45',
  'striver_a2z_sheet_id',
  'Heaps [Learning, Medium, Hard Problems]',
  11,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_49',
  'striver_a2z_sheet_id',
  'Greedy Algorithms [Easy, Medium/Hard]',
  12,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_52',
  'striver_a2z_sheet_id',
  'Binary Trees [Traversals, Medium and Hard Problems]',
  13,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_56',
  'striver_a2z_sheet_id',
  'Binary Search Trees [Concept and Problems]',
  14,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_59',
  'striver_a2z_sheet_id',
  'Graphs [Concepts & Problems]',
  15,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_66',
  'striver_a2z_sheet_id',
  'Dynamic Programming [Patterns and Problems]',
  16,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_76',
  'striver_a2z_sheet_id',
  'Tries',
  17,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_cat_79',
  'striver_a2z_sheet_id',
  'Strings',
  18,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","updatedAt"=NOW();

-- SECTIONS (sub-sections / lectures)
INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_2',
  'striver_a2z_sheet_id',
  'Things to Know in C++/Java/Python or any language',
  1,
  'striver_cat_1',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_3',
  'striver_a2z_sheet_id',
  'Build-up Logical Thinking',
  2,
  'striver_cat_1',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_4',
  'striver_a2z_sheet_id',
  'Patterns',
  3,
  'striver_cat_1',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_5',
  'striver_a2z_sheet_id',
  'Learn STL/Java-Collections or similar thing in your
            language',
  4,
  'striver_cat_1',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_6',
  'striver_a2z_sheet_id',
  'Know Basic Maths',
  5,
  'striver_cat_1',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_7',
  'striver_a2z_sheet_id',
  'Learn Basic Recursion',
  6,
  'striver_cat_1',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_8',
  'striver_a2z_sheet_id',
  'Learn Basic Hashing',
  7,
  'striver_cat_1',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_10',
  'striver_a2z_sheet_id',
  'Sorting-I',
  1,
  'striver_cat_9',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_11',
  'striver_a2z_sheet_id',
  'Sorting-II',
  2,
  'striver_cat_9',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_13',
  'striver_a2z_sheet_id',
  'Easy',
  1,
  'striver_cat_12',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_14',
  'striver_a2z_sheet_id',
  'Medium',
  2,
  'striver_cat_12',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_15',
  'striver_a2z_sheet_id',
  'Hard',
  3,
  'striver_cat_12',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_17',
  'striver_a2z_sheet_id',
  'BS on 1D Arrays',
  1,
  'striver_cat_16',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_18',
  'striver_a2z_sheet_id',
  'BS on Answers',
  2,
  'striver_cat_16',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_19',
  'striver_a2z_sheet_id',
  'BS on 2D Arrays',
  3,
  'striver_cat_16',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_21',
  'striver_a2z_sheet_id',
  'Basic and Easy String Problems',
  1,
  'striver_cat_20',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_22',
  'striver_a2z_sheet_id',
  'Medium String Problems',
  2,
  'striver_cat_20',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_24',
  'striver_a2z_sheet_id',
  'Learn 1D LinkedList',
  1,
  'striver_cat_23',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_25',
  'striver_a2z_sheet_id',
  'Learn Doubly LinkedList',
  2,
  'striver_cat_23',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_26',
  'striver_a2z_sheet_id',
  'Medium Problems of LL',
  3,
  'striver_cat_23',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_27',
  'striver_a2z_sheet_id',
  'Medium Problems of DLL',
  4,
  'striver_cat_23',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_28',
  'striver_a2z_sheet_id',
  'Hard Problems of LL',
  5,
  'striver_cat_23',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_30',
  'striver_a2z_sheet_id',
  'Get a Strong Hold',
  1,
  'striver_cat_29',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_31',
  'striver_a2z_sheet_id',
  'Subsequences Pattern',
  2,
  'striver_cat_29',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_32',
  'striver_a2z_sheet_id',
  'Trying out all Combos / Hard',
  3,
  'striver_cat_29',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_34',
  'striver_a2z_sheet_id',
  'Learn Bit Manipulation',
  1,
  'striver_cat_33',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_35',
  'striver_a2z_sheet_id',
  'Interview Problems',
  2,
  'striver_cat_33',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_36',
  'striver_a2z_sheet_id',
  'Advanced Maths',
  3,
  'striver_cat_33',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_38',
  'striver_a2z_sheet_id',
  'Learning',
  1,
  'striver_cat_37',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_39',
  'striver_a2z_sheet_id',
  'Prefix, Infix, PostFix Conversion Problems',
  2,
  'striver_cat_37',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_40',
  'striver_a2z_sheet_id',
  'Monotonic Stack/Queue Problems [VVV. Imp]',
  3,
  'striver_cat_37',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_41',
  'striver_a2z_sheet_id',
  'Implementation Problems',
  4,
  'striver_cat_37',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_43',
  'striver_a2z_sheet_id',
  'Medium Problems',
  1,
  'striver_cat_42',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_44',
  'striver_a2z_sheet_id',
  'Hard Problems',
  2,
  'striver_cat_42',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_46',
  'striver_a2z_sheet_id',
  'Learning',
  1,
  'striver_cat_45',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_47',
  'striver_a2z_sheet_id',
  'Medium Problems',
  2,
  'striver_cat_45',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_48',
  'striver_a2z_sheet_id',
  'Hard Problems',
  3,
  'striver_cat_45',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_50',
  'striver_a2z_sheet_id',
  'Easy Problems',
  1,
  'striver_cat_49',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_51',
  'striver_a2z_sheet_id',
  'Medium/Hard',
  2,
  'striver_cat_49',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_53',
  'striver_a2z_sheet_id',
  'Traversals',
  1,
  'striver_cat_52',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_54',
  'striver_a2z_sheet_id',
  'Medium Problems',
  2,
  'striver_cat_52',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_55',
  'striver_a2z_sheet_id',
  'Hard Problems',
  3,
  'striver_cat_52',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_57',
  'striver_a2z_sheet_id',
  'Concepts',
  1,
  'striver_cat_56',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_58',
  'striver_a2z_sheet_id',
  'Practice Problems',
  2,
  'striver_cat_56',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_60',
  'striver_a2z_sheet_id',
  'Learning',
  1,
  'striver_cat_59',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_61',
  'striver_a2z_sheet_id',
  'Problems on BFS/DFS',
  2,
  'striver_cat_59',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_62',
  'striver_a2z_sheet_id',
  'Topo Sort and Problems',
  3,
  'striver_cat_59',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_63',
  'striver_a2z_sheet_id',
  'Shortest Path Algorithms and Problems',
  4,
  'striver_cat_59',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_64',
  'striver_a2z_sheet_id',
  'MinimumSpanningTree/Disjoint Set and Problems',
  5,
  'striver_cat_59',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_65',
  'striver_a2z_sheet_id',
  'Other Algorithms',
  6,
  'striver_cat_59',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_67',
  'striver_a2z_sheet_id',
  'Introduction to DP',
  1,
  'striver_cat_66',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_68',
  'striver_a2z_sheet_id',
  '1D DP',
  2,
  'striver_cat_66',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_69',
  'striver_a2z_sheet_id',
  '2D/3D DP and DP on Grids',
  3,
  'striver_cat_66',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_70',
  'striver_a2z_sheet_id',
  'DP on Subsequences',
  4,
  'striver_cat_66',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_71',
  'striver_a2z_sheet_id',
  'DP on Strings',
  5,
  'striver_cat_66',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_72',
  'striver_a2z_sheet_id',
  'DP on Stocks',
  6,
  'striver_cat_66',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_73',
  'striver_a2z_sheet_id',
  'DP on LIS',
  7,
  'striver_cat_66',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_74',
  'striver_a2z_sheet_id',
  'MCM DP | Partition DP',
  8,
  'striver_cat_66',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_75',
  'striver_a2z_sheet_id',
  'DP on Squares',
  9,
  'striver_cat_66',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_77',
  'striver_a2z_sheet_id',
  'Theory',
  1,
  'striver_cat_76',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_78',
  'striver_a2z_sheet_id',
  'Problems',
  2,
  'striver_cat_76',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

INSERT INTO "SheetSection" ("id","sheetId","title","order","parentId","createdAt","updatedAt")
VALUES (
  'striver_sub_80',
  'striver_a2z_sheet_id',
  'Hard Problems',
  1,
  'striver_cat_79',
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE SET "title"=EXCLUDED."title","order"=EXCLUDED."order","parentId"=EXCLUDED."parentId","updatedAt"=NOW();

-- PROBLEMS
INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_1',
  'striver_a2z_sheet_id',
  'striver_sub_2',
  'Input Output',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/c/c-basic-input-output/',
  'https://youtu.be/EAR7De6Goz4?t=250',
  'https://takeuforward.org/c/c-basic-input-output/',
  '/plus/dsa/problems/input-output',
  '/plus/dsa/problems/input-output?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_2',
  'striver_a2z_sheet_id',
  'striver_sub_2',
  'Cpp Basics',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/what-are-arrays-strings',
  'https://youtu.be/EAR7De6Goz4?t=2415',
  'https://takeuforward.org/data-structure/what-are-arrays-strings',
  '/plus/dsa/problems/cpp',
  '/plus/dsa/problems/cpp',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_3',
  'striver_a2z_sheet_id',
  'striver_sub_2',
  'If ElseIf',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/if-else/if-else-statements/',
  'https://youtu.be/EAR7De6Goz4?t=1259',
  'https://takeuforward.org/if-else/if-else-statements/',
  '/plus/dsa/problems/if-elseif',
  '/plus/dsa/problems/if-elseif?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_4',
  'striver_a2z_sheet_id',
  'striver_sub_2',
  'Switch Case',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/switch-case/switch-case-statements/',
  'https://youtu.be/EAR7De6Goz4',
  'https://takeuforward.org/switch-case/switch-case-statements/',
  '/plus/dsa/problems/switch-case',
  '/plus/dsa/problems/switch-case?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_5',
  'striver_a2z_sheet_id',
  'striver_sub_2',
  'What are arrays, strings?',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/what-are-arrays-strings',
  'https://youtu.be/EAR7De6Goz4?t=2415',
  'https://takeuforward.org/data-structure/what-are-arrays-strings',
  '/plus/dsa/problems/cpp',
  '/plus/dsa/problems/cpp',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_6',
  'striver_a2z_sheet_id',
  'striver_sub_2',
  'For loops',
  6,
  'EASY'::"Difficulty",
  'https://takeuforward.org/for-loop/understanding-for-loop/',
  'https://youtu.be/EAR7De6Goz4?t=3096',
  'https://takeuforward.org/for-loop/understanding-for-loop/',
  '/plus/dsa/problems/for-loop',
  '/plus/dsa/problems/for-loop',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_7',
  'striver_a2z_sheet_id',
  'striver_sub_2',
  'While loops',
  7,
  'EASY'::"Difficulty",
  'https://takeuforward.org/while-loop/while-loops-in-programming/',
  'https://youtu.be/EAR7De6Goz4?t=3459',
  'https://takeuforward.org/while-loop/while-loops-in-programming/',
  '/plus/dsa/problems/while-loop',
  '/plus/dsa/problems/while-loop',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_8',
  'striver_a2z_sheet_id',
  'striver_sub_2',
  'Functions (Pass by Reference and Value)',
  8,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/functions-pass-by-reference-and-value',
  'https://youtu.be/EAR7De6Goz4?t=3677',
  'https://takeuforward.org/data-structure/functions-pass-by-reference-and-value',
  '/plus/dsa/problems/pass-by-ref',
  '/plus/dsa/problems/pass-by-ref',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_9',
  'striver_a2z_sheet_id',
  'striver_sub_2',
  'Theory with examples',
  9,
  'EASY'::"Difficulty",
  'https://takeuforward.org/time-complexity/time-and-space-complexity-strivers-a2z-dsa-course/',
  'https://youtu.be/FPu9Uld7W-E',
  'https://takeuforward.org/time-complexity/time-and-space-complexity-strivers-a2z-dsa-course/',
  '/plus/dsa/problems/theory-with-examples',
  '/plus/dsa/problems/theory-with-examples',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_10',
  'striver_a2z_sheet_id',
  'striver_sub_3',
  'Easy and Medium',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/easy-and-medium',
  '/plus/dsa/problems/easy-and-medium?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_11',
  'striver_a2z_sheet_id',
  'striver_sub_3',
  'Hard',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/hard',
  '/plus/dsa/problems/hard?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_12',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 1',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-1',
  '/plus/dsa/problems/pattern-1?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_13',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 2',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-2',
  '/plus/dsa/problems/pattern-2?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_14',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 3',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-3',
  '/plus/dsa/problems/pattern-3?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_15',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 4',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-4',
  '/plus/dsa/problems/pattern-4?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_16',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 5',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-5',
  '/plus/dsa/problems/pattern-5?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_17',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 6',
  6,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-6',
  '/plus/dsa/problems/pattern-6?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_18',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 7',
  7,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-7',
  '/plus/dsa/problems/pattern-7?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_19',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 8',
  8,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-8',
  '/plus/dsa/problems/pattern-8?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_20',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 9',
  9,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-9',
  '/plus/dsa/problems/pattern-9?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_21',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 10',
  10,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-10',
  '/plus/dsa/problems/pattern-10?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_22',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 11',
  11,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-11',
  '/plus/dsa/problems/pattern-11?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_23',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 12',
  12,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-12',
  '/plus/dsa/problems/pattern-12?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_24',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 13',
  13,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-13',
  '/plus/dsa/problems/pattern-13?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_25',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 14',
  14,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-14',
  '/plus/dsa/problems/pattern-14?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_26',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 15',
  15,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-15',
  '/plus/dsa/problems/pattern-15?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_27',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 16',
  16,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-16',
  '/plus/dsa/problems/pattern-16?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_28',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 17',
  17,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-17',
  '/plus/dsa/problems/pattern-17?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_29',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 18',
  18,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-18',
  '/plus/dsa/problems/pattern-18?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_30',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 19',
  19,
  'EASY'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-19',
  '/plus/dsa/problems/pattern-19?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_31',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 20',
  20,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-20',
  '/plus/dsa/problems/pattern-20?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_32',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 21',
  21,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-21',
  '/plus/dsa/problems/pattern-21?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_33',
  'striver_a2z_sheet_id',
  'striver_sub_4',
  'Pattern 22',
  22,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  'https://www.youtube.com/watch?v=tNm_NNSB3_w&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=3',
  'https://takeuforward.org/strivers-a2z-dsa-course/must-do-pattern-problems-before-starting-dsa/',
  '/plus/dsa/problems/pattern-22',
  '/plus/dsa/problems/pattern-22?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_34',
  'striver_a2z_sheet_id',
  'striver_sub_5',
  'STL',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/c/c-stl-tutorial-most-frequent-used-stl-containers/',
  'https://www.youtube.com/watch?v=RRVYpIET_RU',
  'https://leetcode.com/problems/frequency-of-the-most-frequent-element?utm=codolio',
  '/plus/dsa/problems/stl',
  '/plus/dsa/problems/stl',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_35',
  'striver_a2z_sheet_id',
  'striver_sub_5',
  'Java Collections',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/java-collections',
  NULL,
  'https://takeuforward.org/data-structure/java-collections',
  '/plus/dsa/problems/java-collections',
  '/plus/dsa/problems/java-collections',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_36',
  'striver_a2z_sheet_id',
  'striver_sub_6',
  'Count all Digits of a Number',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/count-digits-in-a-number/',
  'https://youtu.be/1xNbjMdbjug',
  'https://www.geeksforgeeks.org/program-count-digits-integer-3/',
  '/plus/dsa/problems/count-all-digits-of-a-number',
  '/plus/dsa/problems/count-all-digits-of-a-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_37',
  'striver_a2z_sheet_id',
  'striver_sub_6',
  'Reverse a number',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/maths/reverse-digits-of-a-number',
  'https://youtu.be/1xNbjMdbjug?t=930',
  'https://leetcode.com/problems/reverse-integer/',
  '/plus/dsa/problems/reverse-a-number',
  '/plus/dsa/problems/reverse-a-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_38',
  'striver_a2z_sheet_id',
  'striver_sub_6',
  'Palindrome Number',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-a-number-is-palindrome-or-not/',
  'https://youtu.be/1xNbjMdbjug?t=1230',
  'https://leetcode.com/problems/palindrome-number/',
  '/plus/dsa/problems/palindrome-number',
  '/plus/dsa/problems/palindrome-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_39',
  'striver_a2z_sheet_id',
  'striver_sub_6',
  'GCD of Two Numbers',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/find-gcd-of-two-numbers/',
  'https://youtu.be/1xNbjMdbjug?t=2684',
  'https://www.geeksforgeeks.org/gcd-lcm-extended-euclidean-algorithms-in-java/',
  '/plus/dsa/problems/gcd-of-two-numbers',
  '/plus/dsa/problems/gcd-of-two-numbers?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_40',
  'striver_a2z_sheet_id',
  'striver_sub_6',
  'Check if the Number is Armstrong',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/maths/check-if-a-number-is-armstrong-number-or-not/',
  'https://youtu.be/1xNbjMdbjug?t=1418',
  'https://leetcode.com/problems/armstrong-number/',
  '/plus/dsa/problems/check-if-the-number-if-armstrong',
  '/plus/dsa/problems/check-if-the-number-if-armstrong?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_41',
  'striver_a2z_sheet_id',
  'striver_sub_6',
  'Print all Divisors',
  6,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/print-all-divisors-of-a-given-number/',
  'https://youtu.be/1xNbjMdbjug?t=1580',
  'https://www.geeksforgeeks.org/find-all-divisors-of-a-natural-number-set-2/',
  '/plus/dsa/problems/divisors-of-a-number',
  '/plus/dsa/problems/divisors-of-a-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_42',
  'striver_a2z_sheet_id',
  'striver_sub_6',
  'Check for Prime Number',
  7,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-a-number-is-prime-or-not/',
  'https://youtu.be/1xNbjMdbjug?t=2381',
  'https://www.geeksforgeeks.org/prime-numbers/',
  '/plus/dsa/problems/check-for-prime-number',
  '/plus/dsa/problems/check-for-prime-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_43',
  'striver_a2z_sheet_id',
  'striver_sub_7',
  'Understand recursion by print something N times',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/recursion/introduction-to-recursion-understand-recursion-by-printing-something-n-times/',
  'https://www.youtube.com/watch?v=yVdKa8dnKiE&list=PLgUwDviBIf0rGlzIn_7rsaR2FQ5e6ZOL9',
  'https://www.geeksforgeeks.org/recursion/',
  NULL,
  '/plus/dsa/problems/recursion-theory',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_44',
  'striver_a2z_sheet_id',
  'striver_sub_7',
  'Print name N times using recursion',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/recursion/print-name-n-times-using-recursion/',
  'https://www.youtube.com/watch?v=un6PLygfXrA&list=PLgUwDviBIf0rGlzIn_7rsaR2FQ5e6ZOL9&index=2',
  'https://www.geeksforgeeks.org/recursion/',
  NULL,
  '/plus/dsa/problems/recursion-theory',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_45',
  'striver_a2z_sheet_id',
  'striver_sub_7',
  'Print 1 to N using Recursion',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/recursion/print-1-to-n-using-recursion/',
  'https://www.youtube.com/watch?v=un6PLygfXrA&list=PLgUwDviBIf0rGlzIn_7rsaR2FQ5e6ZOL9&index=2',
  'https://www.geeksforgeeks.org/print-1-to-n-using-recursion/',
  '/plus/dsa/problems/print-1-to-n-using-recursion',
  '/plus/dsa/problems/print-1-to-n-using-recursion?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_46',
  'striver_a2z_sheet_id',
  'striver_sub_7',
  'Print N to 1 using Recursion',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/recursion/print-n-to-1-using-recursion/',
  'https://www.youtube.com/watch?v=un6PLygfXrA&list=PLgUwDviBIf0rGlzIn_7rsaR2FQ5e6ZOL9&index=2',
  'https://www.geeksforgeeks.org/print-n-to-1-using-recursion/',
  '/plus/dsa/problems/print-n-to-1-using-recursion',
  '/plus/dsa/problems/print-n-to-1-using-recursion?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_47',
  'striver_a2z_sheet_id',
  'striver_sub_7',
  'Sum of First N Numbers',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/sum-of-first-n-natural-numbers/',
  'https://www.youtube.com/watch?v=69ZCDFy-OUo&list=PLgUwDviBIf0rGlzIn_7rsaR2FQ5e6ZOL9&index=3',
  'https://www.geeksforgeeks.org/sum-of-first-n-natural-numbers/',
  '/plus/dsa/problems/sum-of-first-n-numbers',
  '/plus/dsa/problems/sum-of-first-n-numbers?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_48',
  'striver_a2z_sheet_id',
  'striver_sub_7',
  'Factorial of a given number',
  6,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/factorial-of-a-number-iterative-and-recursive',
  'https://www.youtube.com/watch?v=69ZCDFy-OUo&list=PLgUwDviBIf0rGlzIn_7rsaR2FQ5e6ZOL9&index=3',
  'https://www.geeksforgeeks.org/factorial-of-a-number/',
  '/plus/dsa/problems/factorial-of-a-given-number-i',
  '/plus/dsa/problems/factorial-of-a-given-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_49',
  'striver_a2z_sheet_id',
  'striver_sub_7',
  'Reverse an array',
  7,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/reverse-a-given-array/',
  'https://www.youtube.com/watch?v=twuC1F6gLI8&list=PLgUwDviBIf0rGlzIn_7rsaR2FQ5e6ZOL9&index=4',
  'https://leetcode.com/problems/reverse-string?utm=codolio',
  '/plus/dsa/problems/reverse-an-array',
  '/plus/dsa/problems/reverse-an-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_50',
  'striver_a2z_sheet_id',
  'striver_sub_7',
  'Check if String is Palindrome or Not ',
  8,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-the-given-string-is-palindrome-or-not/',
  'https://www.youtube.com/watch?v=twuC1F6gLI8&list=PLgUwDviBIf0rGlzIn_7rsaR2FQ5e6ZOL9&index=4',
  'https://leetcode.com/problems/valid-palindrome/',
  '/plus/dsa/problems/check-if-string-is-palindrome-or-not-',
  '/plus/dsa/problems/check-if-string-is-palindrome-or-not-?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_51',
  'striver_a2z_sheet_id',
  'striver_sub_7',
  'Fibonacci Number',
  9,
  'EASY'::"Difficulty",
  'https://takeuforward.org/arrays/print-fibonacci-series-up-to-nth-term/',
  'https://www.youtube.com/watch?v=kvRjNm4rVBE&list=PLgUwDviBIf0rGlzIn_7rsaR2FQ5e6ZOL9&index=5',
  'https://leetcode.com/problems/fibonacci-number/',
  '/plus/dsa/problems/fibonacci-number',
  '/plus/dsa/problems/fibonacci-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_52',
  'striver_a2z_sheet_id',
  'striver_sub_8',
  'Basic Hashing',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/hashing/hashing-maps-time-complexity-collisions-division-rule-of-hashing-strivers-a2z-dsa-course/',
  'https://www.youtube.com/watch?v=KEs5UyBJ39g',
  'https://www.geeksforgeeks.org/hashing-data-structure/',
  '/plus/dsa/problems/basic-hashing',
  '/plus/dsa/problems/basic-hashing',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_53',
  'striver_a2z_sheet_id',
  'striver_sub_8',
  'Counting Frequencies of Array Elements',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/count-frequency-of-each-element-in-the-array/',
  NULL,
  'https://www.geeksforgeeks.org/counting-frequencies-of-array-elements/',
  '/plus/dsa/problems/counting-frequencies-of-array-elements',
  '/plus/dsa/problems/counting-frequencies-of-array-elements?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_54',
  'striver_a2z_sheet_id',
  'striver_sub_8',
  'Highest Occurring Element in an Array',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/arrays/find-the-highest-lowest-frequency-element/',
  NULL,
  'https://leetcode.com/problems/frequency-of-the-most-frequent-element/',
  '/plus/dsa/problems/highest-occurring-element-in-an-array',
  '/plus/dsa/problems/highest-occurring-element-in-an-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_55',
  'striver_a2z_sheet_id',
  'striver_sub_10',
  'Selection Sort',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/sorting/selection-sort-algorithm/',
  'https://youtu.be/HGk_ypEuS24?t=167',
  'https://leetcode.com/problems/sort-an-array/',
  '/plus/dsa/problems/selection-sort',
  '/plus/dsa/problems/selection-sort?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_56',
  'striver_a2z_sheet_id',
  'striver_sub_10',
  'Bubble Sort',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/bubble-sort-algorithm/',
  'https://youtu.be/HGk_ypEuS24?t=1061',
  'https://leetcode.com/problems/sort-an-array/',
  '/plus/dsa/problems/bubble-sort',
  '/plus/dsa/problems/bubble-sort?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_57',
  'striver_a2z_sheet_id',
  'striver_sub_10',
  'Insertion Sorting',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/insertion-sort-algorithm/',
  'https://youtu.be/HGk_ypEuS24?t=1900',
  'https://leetcode.com/problems/sort-an-array/',
  '/plus/dsa/problems/insertion-sorting',
  '/plus/dsa/problems/insertion-sorting?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_58',
  'striver_a2z_sheet_id',
  'striver_sub_11',
  'Merge Sorting',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/merge-sort-algorithm/',
  'https://youtu.be/ogjf7ORKfd8',
  'https://leetcode.com/problems/sort-an-array/',
  '/plus/dsa/problems/merge-sorting',
  '/plus/dsa/problems/merge-sorting?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_59',
  'striver_a2z_sheet_id',
  'striver_sub_11',
  'Recursive Bubble Sort',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/arrays/recursive-bubble-sort-algorithm/',
  NULL,
  'https://www.geeksforgeeks.org/recursive-bubble-sort/',
  '/plus/dsa/problems/recursive-bubble-sort',
  '/plus/dsa/problems/recursive-bubble-sort?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_60',
  'striver_a2z_sheet_id',
  'striver_sub_11',
  'Recursive Insertion Sort',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/arrays/recursive-insertion-sort-algorithm/',
  NULL,
  'https://www.geeksforgeeks.org/recursive-insertion-sort/',
  '/plus/dsa/problems/recursive-insertion-sort',
  '/plus/dsa/problems/recursive-insertion-sort?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_61',
  'striver_a2z_sheet_id',
  'striver_sub_11',
  'Quick Sorting',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/quick-sort-algorithm/',
  'https://youtu.be/WIrA4YexLRQ',
  'https://leetcode.com/problems/sort-an-array/',
  '/plus/dsa/problems/quick-sorting',
  '/plus/dsa/problems/quick-sorting?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_62',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Largest Element ',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/find-the-largest-element-in-an-array/',
  'https://youtu.be/37E9ckMDdTk?t=526',
  'https://leetcode.com/problems/kth-largest-element-in-an-array?utm=codolio',
  '/plus/dsa/problems/largest-element',
  '/plus/dsa/problems/largest-element?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_63',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Second Largest Element',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/find-second-smallest-and-second-largest-element-in-an-array/',
  'https://youtu.be/37E9ckMDdTk?t=810',
  'https://www.geeksforgeeks.org/find-second-largest-element-array/',
  '/plus/dsa/problems/second-largest-element',
  '/plus/dsa/problems/second-largest-element?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_64',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Check if the Array is Sorted II',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-an-array-is-sorted/',
  'https://youtu.be/37E9ckMDdTk?t=17224',
  'https://leetcode.com/problems/check-if-array-is-sorted-and-rotated/#:~:text=Input%3A%20nums%20%3D%20%5B2%2C,no%20rotation)%20to%20make%20nums.',
  '/plus/dsa/problems/check-if-the-array-is-sorted-ii',
  '/plus/dsa/problems/check-if-the-array-is-sorted-ii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_65',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Remove duplicates from Sorted array',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/remove-duplicates-in-place-from-sorted-array/',
  'https://youtu.be/37E9ckMDdTk?t=1887',
  'https://leetcode.com/problems/remove-duplicates-from-sorted-array/#:~:text=Input%3A%20nums%20%3D%20%5B0%2C,%2C%203%2C%20and%204%20respectively.',
  '/plus/dsa/problems/remove-duplicates-from-sorted-array',
  '/plus/dsa/problems/remove-duplicates-from-sorted-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_66',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Left Rotate Array by One',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/left-rotate-the-array-by-one/',
  'https://youtu.be/wvcQg43_V8U?t=61',
  'https://leetcode.com/problems/rotate-array/',
  '/plus/dsa/problems/left-rotate-array-by-one',
  '/plus/dsa/problems/left-rotate-array-by-one?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_67',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Left Rotate Array by K Places',
  6,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/rotate-array-by-k-elements/',
  'https://youtu.be/wvcQg43_V8U?t=485',
  'https://leetcode.com/problems/rotate-array/',
  '/plus/dsa/problems/left-rotate-array',
  '/plus/dsa/problems/left-rotate-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_68',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Move Zeros to End',
  7,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/move-all-zeros-to-the-end-of-the-array/',
  'https://youtu.be/wvcQg43_V8U?t=1633',
  'https://leetcode.com/problems/move-zeroes/',
  '/plus/dsa/problems/move-zeros-to-end',
  '/plus/dsa/problems/move-zeros-to-end?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_69',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Linear Search',
  8,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/linear-search-in-c/',
  'https://youtu.be/wvcQg43_V8U?t=2465',
  'https://www.geeksforgeeks.org/linear-search/',
  '/plus/dsa/problems/linear-search',
  '/plus/dsa/problems/linear-search?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_70',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Union of two sorted arrays',
  9,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/union-of-two-sorted-arrays/',
  'https://youtu.be/wvcQg43_V8U?t=2584',
  'https://www.geeksforgeeks.org/union-and-intersection-of-two-sorted-arrays-2/',
  '/plus/dsa/problems/union-of-two-sorted-arrays',
  '/plus/dsa/problems/union-of-two-sorted-arrays?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_71',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Find missing number',
  10,
  'EASY'::"Difficulty",
  'https://www.geeksforgeeks.org/find-the-missing-number/',
  NULL,
  'https://leetcode.com/problems/missing-number?utm=codolio',
  '/plus/dsa/problems/find-missing-number',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_72',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Maximum Consecutive Ones',
  11,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/count-maximum-consecutive-ones-in-the-array/',
  'https://youtu.be/bYWLJb3vCWY?t=1124',
  'https://leetcode.com/problems/max-consecutive-ones/',
  '/plus/dsa/problems/maximum-consecutive-ones',
  '/plus/dsa/problems/maximum-consecutive-ones?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_73',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Find the number that appears once, and other numbers twice.',
  12,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/arrays/find-the-number-that-appears-once-and-the-other-numbers-twice/',
  'https://youtu.be/bYWLJb3vCWY?t=1369',
  'https://leetcode.com/problems/single-number/',
  '/plus/dsa/problems/single-number---i',
  '/plus/dsa/problems/single-number---i?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_74',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Longest subarray with given sum K(positives)',
  13,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-subarray-with-given-sum-k/',
  'https://www.youtube.com/watch?v=frf7qxiN2qU&feature=youtu.be',
  'https://www.geeksforgeeks.org/longest-sub-array-sum-k/',
  '/plus/dsa/problems/longest-subarray-with-sum-k',
  '/plus/dsa/problems/longest-subarray-with-sum-k?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_75',
  'striver_a2z_sheet_id',
  'striver_sub_13',
  'Longest subarray with sum K',
  14,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/length-of-the-longest-subarray-with-zero-sum/',
  'https://youtu.be/frf7qxiN2qU',
  'https://www.geeksforgeeks.org/longest-sub-array-sum-k/',
  '/plus/dsa/problems/longest-subarray-with-sum-k',
  '/plus/dsa/problems/longest-subarray-with-sum-k?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_76',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Two Sum',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/two-sum-check-if-a-pair-with-given-sum-exists-in-array/',
  'https://youtu.be/UXDSeD9mN-k',
  'https://leetcode.com/problems/two-sum/',
  '/plus/dsa/problems/two-sum',
  '/plus/dsa/problems/two-sum?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_77',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Sort an array of 0''s 1''s and 2''s',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/sort-an-array-of-0s-1s-and-2s/',
  'https://youtu.be/tp8JIuCXBaU',
  'https://leetcode.com/problems/sort-colors/',
  '/plus/dsa/problems/sort-an-array-of-0''s-1''s-and-2''s',
  '/plus/dsa/problems/sort-an-array-of-0''s-1''s-and-2''s?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_78',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Majority Element-I',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/find-the-majority-element-that-occurs-more-than-n-2-times/',
  'https://youtu.be/nP_ns3uSh80',
  'https://leetcode.com/problems/majority-element/',
  '/plus/dsa/problems/majority-element-i',
  '/plus/dsa/problems/majority-element-i?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_79',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Kadane''s Algorithm',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/kadanes-algorithm-maximum-subarray-sum-in-an-array/',
  'https://youtu.be/AHZpyENo7k4?si=QJpof4R1hHokm1hw',
  'https://leetcode.com/problems/maximum-subarray/',
  '/plus/dsa/problems/kadane''s-algorithm',
  '/plus/dsa/problems/kadane''s-algorithm?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_80',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Print subarray with maximum subarray sum (extended version of above problem)',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/kadanes-algorithm-maximum-subarray-sum-in-an-array/',
  'https://youtu.be/AHZpyENo7k4',
  'https://leetcode.com/problems/maximum-subarray/',
  '/plus/dsa/problems/kadane''s-algorithm',
  '/plus/dsa/problems/kadane''s-algorithm?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_81',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Stock Buy and Sell',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/stock-buy-and-sell/',
  'https://youtu.be/excAOvwF_Wk',
  'https://leetcode.com/problems/best-time-to-buy-and-sell-stock/',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_82',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Rearrange array elements by sign',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/arrays/rearrange-array-elements-by-sign/',
  'https://youtu.be/h4aBagy4Uok',
  'https://leetcode.com/problems/rearrange-array-elements-by-sign/',
  '/plus/dsa/problems/rearrange-array-elements-by-sign',
  '/plus/dsa/problems/rearrange-array-elements-by-sign?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_83',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Next Permutation',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/next_permutation-find-next-lexicographically-greater-permutation/',
  'https://youtu.be/JDOXKqF60RQ',
  'https://leetcode.com/problems/next-permutation/',
  '/plus/dsa/problems/next-permutation',
  '/plus/dsa/problems/next-permutation?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_84',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Leaders in an Array',
  9,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/leaders-in-an-array/',
  'https://youtu.be/cHrH9CQ8pmY',
  'https://www.geeksforgeeks.org/leaders-in-an-array/',
  '/plus/dsa/problems/leaders-in-an-array',
  '/plus/dsa/problems/leaders-in-an-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_85',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Longest Consecutive Sequence in an Array',
  10,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-consecutive-sequence-in-an-array/',
  'https://youtu.be/oO5uLE7EUlM',
  'https://leetcode.com/problems/longest-consecutive-sequence/solutio',
  '/plus/dsa/problems/longest-consecutive-sequence-in-an-array',
  '/plus/dsa/problems/longest-consecutive-sequence-in-an-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_86',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Set Matrix Zeroes',
  11,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/set-matrix-zero/',
  'https://youtu.be/N0MgLvceX7M',
  'https://leetcode.com/problems/set-matrix-zeroes/',
  '/plus/dsa/problems/set-matrix-zeroes',
  '/plus/dsa/problems/set-matrix-zeroes?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_87',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Rotate matrix by 90 degrees',
  12,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/rotate-image-by-90-degree/',
  'https://youtu.be/Z0R2u6gd3GU',
  'https://leetcode.com/problems/rotate-image/',
  '/plus/dsa/problems/rotate-matrix-by-90-degrees',
  '/plus/dsa/problems/rotate-matrix-by-90-degrees?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_88',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Print the matrix in spiral manner',
  13,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/spiral-traversal-of-matrix/',
  'https://youtu.be/3Zv-s9UUrFM',
  'https://leetcode.com/problems/spiral-matrix/',
  '/plus/dsa/problems/print-the-matrix-in-spiral-manner',
  '/plus/dsa/problems/print-the-matrix-in-spiral-manner?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_89',
  'striver_a2z_sheet_id',
  'striver_sub_14',
  'Count subarrays with given sum',
  14,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/arrays/count-subarray-sum-equals-k/',
  'https://www.youtube.com/watch?v=xvNwoz-ufXA&list=PLgUwDviBIf0oF6QL8m22w1hIDC1vJ_BHz&index=32',
  'https://leetcode.com/problems/subarray-sum-equals-k/',
  '/plus/dsa/problems/count-subarrays-with-given-sum',
  '/plus/dsa/problems/count-subarrays-with-given-sum?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_90',
  'striver_a2z_sheet_id',
  'striver_sub_15',
  'Pascal''s Triangle I',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/program-to-generate-pascals-triangle',
  'https://youtu.be/bR7mQgwQ_o8',
  'https://leetcode.com/problems/pascals-triangle/',
  '/plus/dsa/problems/pascals-triangle-i',
  '/plus/dsa/problems/pascals-triangle-i?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_91',
  'striver_a2z_sheet_id',
  'striver_sub_15',
  'Majority Element-II',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/majority-elementsn-3-times-find-the-elements-that-appears-more-than-n-3-times-in-the-array/',
  'https://youtu.be/vwZj1K0e9U8',
  'https://leetcode.com/problems/majority-element-ii/',
  '/plus/dsa/problems/majority-element-ii',
  '/plus/dsa/problems/majority-element-ii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_92',
  'striver_a2z_sheet_id',
  'striver_sub_15',
  '3 Sum',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/3-sum-find-triplets-that-add-up-to-a-zero/',
  'https://youtu.be/DhFh8Kw7ymk',
  'https://leetcode.com/problems/3sum/',
  '/plus/dsa/problems/3-sum',
  '/plus/dsa/problems/3-sum?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_93',
  'striver_a2z_sheet_id',
  'striver_sub_15',
  '4 Sum',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/4-sum-find-quads-that-add-up-to-a-target-value/',
  'https://youtu.be/eD95WRfh81c',
  'https://leetcode.com/problems/4sum/',
  '/plus/dsa/problems/4-sum',
  '/plus/dsa/problems/4-sum?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_94',
  'striver_a2z_sheet_id',
  'striver_sub_15',
  'Largest Subarray with Sum 0',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/length-of-the-longest-subarray-with-zero-sum/',
  'https://www.youtube.com/watch?v=xmguZ6GbatA&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=23',
  'https://www.geeksforgeeks.org/find-the-largest-subarray-with-0-sum/',
  '/plus/dsa/problems/largest-subarray-with-sum-0',
  '/plus/dsa/problems/largest-subarray-with-sum-0?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_95',
  'striver_a2z_sheet_id',
  'striver_sub_15',
  'Count subarrays with given xor K',
  6,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/count-the-number-of-subarrays-with-given-xor-k/',
  'https://youtu.be/eZr-6p0B7ME',
  'https://www.geeksforgeeks.org/count-number-subarrays-given-xor/',
  '/plus/dsa/problems/count-subarrays-with-given-xor-k',
  '/plus/dsa/problems/count-subarrays-with-given-xor-k?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_96',
  'striver_a2z_sheet_id',
  'striver_sub_15',
  'Merge Overlapping Subintervals',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/merge-overlapping-sub-intervals/',
  'https://youtu.be/IexN60k62jo',
  'https://leetcode.com/problems/merge-intervals/',
  '/plus/dsa/problems/merge-overlapping-subintervals',
  '/plus/dsa/problems/merge-overlapping-subintervals?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_97',
  'striver_a2z_sheet_id',
  'striver_sub_15',
  'Merge two sorted arrays without extra space',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/merge-two-sorted-arrays-without-extra-space/',
  'https://youtu.be/n7uwj04E0I4',
  'https://leetcode.com/problems/merge-sorted-array/',
  '/plus/dsa/problems/merge-two-sorted-arrays-without-extra-space',
  '/plus/dsa/problems/merge-two-sorted-arrays-without-extra-space?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_98',
  'striver_a2z_sheet_id',
  'striver_sub_15',
  'Find the repeating and missing number',
  9,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/find-the-repeating-and-missing-numbers/',
  'https://youtu.be/2D0D8HE6uak',
  'https://www.geeksforgeeks.org/find-a-repeating-and-a-missing-number/',
  '/plus/dsa/problems/find-the-repeating-and-missing-number',
  '/plus/dsa/problems/find-the-repeating-and-missing-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_99',
  'striver_a2z_sheet_id',
  'striver_sub_15',
  'Count Inversions',
  10,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/count-inversions-in-an-array',
  'https://youtu.be/AseUmwVNaoY',
  'https://www.geeksforgeeks.org/count-inversions-in-an-array-set-1-using-merge-sort/',
  '/plus/dsa/problems/count-inversions',
  '/plus/dsa/problems/count-inversions?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_100',
  'striver_a2z_sheet_id',
  'striver_sub_15',
  'Reverse Pairs',
  11,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/count-reverse-pairs/',
  'https://youtu.be/0e4bZaP3MDI',
  'https://leetcode.com/problems/reverse-pairs/',
  '/plus/dsa/problems/reverse-pairs',
  '/plus/dsa/problems/reverse-pairs?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_101',
  'striver_a2z_sheet_id',
  'striver_sub_15',
  'Maximum Product Subarray in an Array',
  12,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/maximum-product-subarray-in-an-array/',
  NULL,
  'https://leetcode.com/problems/maximum-product-subarray/',
  '/plus/dsa/problems/maximum-product-subarray-in-an-array',
  '/plus/dsa/problems/maximum-product-subarray-in-an-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_102',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'Search X in sorted array',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/binary-search-explained/',
  'https://youtu.be/MHf6awe89xw',
  'https://leetcode.com/problems/binary-search/',
  '/plus/dsa/problems/search-x-in-sorted-array',
  '/plus/dsa/problems/search-x-in-sorted-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_103',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'Lower Bound ',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/arrays/implement-lower-bound-bs-2/',
  'https://youtu.be/6zhGS79oQ4k',
  'https://www.geeksforgeeks.org/lower_bound-in-cpp/',
  '/plus/dsa/problems/lower-bound-',
  '/plus/dsa/problems/lower-bound-?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_104',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'Upper Bound',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/arrays/implement-upper-bound/',
  'https://youtu.be/6zhGS79oQ4k',
  'https://www.geeksforgeeks.org/upper_bound-in-cpp/',
  '/plus/dsa/problems/upper-bound',
  '/plus/dsa/problems/upper-bound?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_105',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'Search insert position',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/arrays/search-insert-position/',
  'https://youtu.be/6zhGS79oQ4k',
  'https://leetcode.com/problems/search-insert-position/',
  '/plus/dsa/problems/search-insert-position',
  '/plus/dsa/problems/search-insert-position?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_106',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'Floor and Ceil in Sorted Array',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/arrays/floor-and-ceil-in-sorted-array/',
  'https://www.youtube.com/watch?v=6zhGS79oQ4k&list=PLgUwDviBIf0pMFMWuuvDNMAkoQFi-h0ZF&index=3',
  'https://www.geeksforgeeks.org/floor-and-ceil-from-a-bst/',
  '/plus/dsa/problems/floor-and-ceil-in-sorted-array',
  '/plus/dsa/problems/floor-and-ceil-in-sorted-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_107',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'First and last occurrence',
  6,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/last-occurrence-in-a-sorted-array/',
  'https://youtu.be/hjR1IYVx9lY',
  'https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/',
  '/plus/dsa/problems/first-and-last-occurrence',
  '/plus/dsa/problems/first-and-last-occurrence?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_108',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'Count Occurrences in a Sorted Array',
  7,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/count-occurrences-in-sorted-array/',
  'https://youtu.be/hjR1IYVx9lY',
  'https://www.geeksforgeeks.org/count-occurrences-in-sorted-array/',
  '/plus/dsa/problems/count-occurrences-in-a-sorted-array',
  '/plus/dsa/problems/count-occurrences-in-a-sorted-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_109',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'Search in rotated sorted array-I',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/search-element-in-a-rotated-sorted-array/',
  'https://www.youtube.com/watch?v=r3pMQ8-Ad5s&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=64',
  'https://leetcode.com/problems/search-in-rotated-sorted-array/',
  '/plus/dsa/problems/search-in-rotated-sorted-array-i',
  '/plus/dsa/problems/search-in-rotated-sorted-array-i?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_110',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'Search in rotated sorted array-II',
  9,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/arrays/search-element-in-rotated-sorted-array-ii',
  'https://youtu.be/w2G2W8l__pc',
  'https://leetcode.com/problems/search-in-rotated-sorted-array-ii/',
  '/plus/dsa/problems/search-in-rotated-sorted-array-2',
  '/plus/dsa/problems/search-in-rotated-sorted-array-2?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_111',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'Find minimum in Rotated Sorted Array',
  10,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/minimum-in-rotated-sorted-array/',
  'https://youtu.be/nhEMDKMB44g',
  'https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/',
  '/plus/dsa/problems/find-minimum-in-rotated-sorted-array',
  '/plus/dsa/problems/find-minimum-in-rotated-sorted-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_112',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'Find out how many times the array is rotated',
  11,
  'EASY'::"Difficulty",
  'https://takeuforward.org/arrays/find-out-how-many-times-the-array-has-been-rotated/',
  'https://youtu.be/jtSiWTPLwd0',
  'https://www.geeksforgeeks.org/find-rotation-count-rotated-sorted-array/',
  '/plus/dsa/problems/find-out-how-many-times-the-array-is-rotated',
  '/plus/dsa/problems/find-out-how-many-times-the-array-is-rotated?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_113',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'Single element in a Sorted Array',
  12,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/search-single-element-in-a-sorted-array/',
  'https://youtu.be/AZOmHuHadxQ',
  'https://leetcode.com/problems/single-element-in-a-sorted-array/',
  '/plus/dsa/problems/single-element-in-sorted-array',
  '/plus/dsa/problems/single-element-in-sorted-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_114',
  'striver_a2z_sheet_id',
  'striver_sub_17',
  'Find peak element',
  13,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/peak-element-in-array/',
  'https://youtu.be/cXxmbemS6XM',
  'https://leetcode.com/problems/find-peak-element/#:~:text=Find%20Peak%20Element%20%2D%20LeetCode&text=A%20peak%20element%20is%20an,to%20any%20of%20the%20peaks.',
  '/plus/dsa/problems/find-peak-element',
  '/plus/dsa/problems/find-peak-element?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_115',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Find square root of a number',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/binary-search/finding-sqrt-of-a-number-using-binary-search/',
  'https://youtu.be/Bsv3FPUX_BA',
  'https://leetcode.com/problems/sqrtx/',
  '/plus/dsa/problems/find-square-root-of-a-number',
  '/plus/dsa/problems/find-square-root-of-a-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_116',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Find Nth root of a number',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/nth-root-of-a-number-using-binary-search/',
  'https://www.youtube.com/watch?v=WjpswYrS2nY&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=62',
  'https://www.geeksforgeeks.org/n-th-root-number/',
  '/plus/dsa/problems/find-nth-root-of-a-number',
  '/plus/dsa/problems/find-nth-root-of-a-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_117',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Koko eating bananas',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/binary-search/koko-eating-bananas/',
  'https://youtu.be/qyfekrNni90',
  'https://leetcode.com/problems/koko-eating-bananas/',
  '/plus/dsa/problems/koko-eating-bananas',
  '/plus/dsa/problems/koko-eating-bananas?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_118',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Minimum days to make M bouquets',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/arrays/minimum-days-to-make-m-bouquets/',
  'https://youtu.be/TXAuxeYBTdg',
  'https://leetcode.com/problems/minimum-number-of-days-to-make-m-bouquets/',
  '/plus/dsa/problems/minimum-days-to-make-m-bouquets',
  '/plus/dsa/problems/minimum-days-to-make-m-bouquets?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_119',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Find the smallest divisor',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/arrays/find-the-smallest-divisor-given-a-threshold/',
  'https://youtu.be/UvBKTVaG6U8',
  'https://leetcode.com/problems/find-the-smallest-divisor-given-a-threshold/',
  '/plus/dsa/problems/find-the-smallest-divisor',
  '/plus/dsa/problems/find-the-smallest-divisor?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_120',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Capacity to Ship Packages Within D Days',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/arrays/capacity-to-ship-packages-within-d-days/',
  'https://youtu.be/MG-Ac4TAvTY',
  'https://leetcode.com/problems/capacity-to-ship-packages-within-d-days/',
  '/plus/dsa/problems/capacity-to-ship-packages-within-d-days',
  '/plus/dsa/problems/capacity-to-ship-packages-within-d-days?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_121',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Kth Missing Positive Number',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/arrays/kth-missing-positive-number/',
  'https://youtu.be/uZ0N_hZpyps',
  'https://leetcode.com/problems/kth-missing-positive-number/#:~:text=Given%20an%20array%20arr%20of,13%2C...%5D.',
  '/plus/dsa/problems/kth-missing-positive-number',
  '/plus/dsa/problems/kth-missing-positive-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_122',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Aggressive Cows',
  8,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/aggressive-cows-detailed-solution/',
  'https://youtu.be/R_Mfw4ew-Vo',
  'https://www.geeksforgeeks.org/aggressive-cows/',
  '/plus/dsa/problems/aggressive-cows',
  '/plus/dsa/problems/aggressive-cows?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_123',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Book Allocation Problem',
  9,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/allocate-minimum-number-of-pages/',
  'https://www.youtube.com/watch?v=gYmWHvRHu-s&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=69',
  'https://www.geeksforgeeks.org/allocate-minimum-number-pages/',
  '/plus/dsa/problems/book-allocation-problem',
  '/plus/dsa/problems/book-allocation-problem?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_124',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Split array - largest sum',
  10,
  'HARD'::"Difficulty",
  'https://takeuforward.org/arrays/split-array-largest-sum/',
  'https://www.youtube.com/watch?v=thUd_WJn6wk&list=PLgUwDviBIf0pMFMWuuvDNMAkoQFi-h0ZF&index=20',
  'https://leetcode.com/problems/split-array-largest-sum/',
  '/plus/dsa/problems/split-array---largest-sum',
  '/plus/dsa/problems/split-array---largest-sum?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_125',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Painter''s Partition',
  11,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/arrays/painters-partition-problem/',
  'https://www.youtube.com/watch?v=thUd_WJn6wk&list=PLgUwDviBIf0pMFMWuuvDNMAkoQFi-h0ZF&index=20',
  'https://www.geeksforgeeks.org/painters-partition-problem/',
  '/plus/dsa/problems/painters-partition',
  '/plus/dsa/problems/painters-partition?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_126',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Minimize Max Distance to Gas Station',
  12,
  'HARD'::"Difficulty",
  'https://takeuforward.org/arrays/minimise-maximum-distance-between-gas-stations/',
  'https://www.youtube.com/watch?v=kMSBvlZ-_HA&list=PLgUwDviBIf0pMFMWuuvDNMAkoQFi-h0ZF&index=21',
  'https://leetcode.com/problems/minimize-max-distance-to-gas-station/',
  '/plus/dsa/problems/minimise-max-distance-to-gas-stations',
  '/plus/dsa/problems/minimise-max-distance-to-gas-stations?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_127',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Median of 2 sorted arrays',
  13,
  'HARD'::"Difficulty",
  NULL,
  'https://www.youtube.com/watch?v=NTop3VTjmxk&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=65',
  'https://leetcode.com/problems/median-of-two-sorted-arrays/',
  '/plus/dsa/problems/median-of-2-sorted-arrays',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_128',
  'striver_a2z_sheet_id',
  'striver_sub_18',
  'Kth element of 2 sorted arrays',
  14,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/k-th-element-of-two-sorted-arrays/',
  'https://youtu.be/D1oDwWCq50g',
  'https://www.geeksforgeeks.org/k-th-element-two-sorted-arrays/',
  '/plus/dsa/problems/kth-element-of-2-sorted-arrays',
  '/plus/dsa/problems/kth-element-of-2-sorted-arrays?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_129',
  'striver_a2z_sheet_id',
  'striver_sub_19',
  'Find row with maximum 1''s',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/arrays/find-the-row-with-maximum-number-of-1s/',
  'https://youtu.be/SCz-1TtYxDI',
  'https://www.geeksforgeeks.org/find-the-row-with-maximum-number-1s/',
  '/plus/dsa/problems/find-row-with-maximum-1''s',
  '/plus/dsa/problems/find-row-with-maximum-1''s?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_130',
  'striver_a2z_sheet_id',
  'striver_sub_19',
  'Search in a 2D matrix',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/search-in-a-sorted-2d-matrix/',
  'https://youtu.be/ZYpYur0znng',
  'https://leetcode.com/problems/search-a-2d-matrix/',
  '/plus/dsa/problems/search-in-a-2d-matrix',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_131',
  'striver_a2z_sheet_id',
  'striver_sub_19',
  'Search in 2D matrix - II',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/arrays/search-in-a-row-and-column-wise-sorted-matrix/',
  'https://youtu.be/9ZbB397jU4k',
  'https://leetcode.com/problems/search-a-2d-matrix-ii/',
  '/plus/dsa/problems/search-in-2d-matrix-ii',
  '/plus/dsa/problems/search-in-2d-matrix-ii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_132',
  'striver_a2z_sheet_id',
  'striver_sub_19',
  'Find Peak Element - II',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/find-peak-element-2d-matrix',
  'https://youtu.be/nGGp5XBzC4g?si=WCop5C6Azj5gAELH',
  'https://leetcode.com/problems/find-a-peak-element-ii/',
  '/plus/dsa/problems/find-peak-element-ii',
  '/plus/dsa/problems/find-peak-element-ii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_133',
  'striver_a2z_sheet_id',
  'striver_sub_19',
  'Matrix Median',
  5,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/median-of-row-wise-sorted-matrix/',
  'https://youtu.be/Q9wXgdxJq48?si=ScI_0uzJh7yg8nrX',
  'https://www.geeksforgeeks.org/find-median-row-wise-sorted-matrix/',
  '/plus/dsa/problems/matrix-median',
  '/plus/dsa/problems/matrix-median?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_134',
  'striver_a2z_sheet_id',
  'striver_sub_21',
  'Remove Outermost Parentheses',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/remove-outermost-parentheses',
  NULL,
  'https://leetcode.com/problems/remove-outermost-parentheses/',
  '/plus/dsa/problems/remove-outermost-parentheses',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_135',
  'striver_a2z_sheet_id',
  'striver_sub_21',
  'Reverse words in a given string / Palindrome Check',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/reverse-words-in-a-string/',
  NULL,
  'https://leetcode.com/problems/reverse-words-in-a-string/',
  '/plus/dsa/problems/reverse-every-word-in-a-string',
  '/plus/dsa/problems/reverse-every-word-in-a-string?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_136',
  'striver_a2z_sheet_id',
  'striver_sub_21',
  'Largest Odd Number in a String',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/largest-odd-number-in-a-string',
  NULL,
  'https://leetcode.com/problems/largest-odd-number-in-string/',
  '/plus/dsa/problems/largest-odd-number-in-a-string',
  '/plus/dsa/problems/largest-odd-number-in-a-string?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_137',
  'striver_a2z_sheet_id',
  'striver_sub_21',
  'Longest Common Prefix',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-common-prefix',
  NULL,
  'https://leetcode.com/problems/longest-common-prefix/',
  '/plus/dsa/problems/longest-common-prefix',
  '/plus/dsa/problems/longest-happy-prefix?tab=editorialhttps://takeuforward.org/plus/dsa/problems/longest-common-prefix?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_138',
  'striver_a2z_sheet_id',
  'striver_sub_21',
  'Isomorphic String',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/isomorphic-string',
  NULL,
  'https://leetcode.com/problems/isomorphic-strings/',
  '/plus/dsa/problems/isomorphic-string',
  '/plus/dsa/problems/isomorphic-string?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_139',
  'striver_a2z_sheet_id',
  'striver_sub_21',
  'Rotate String',
  6,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-one-string-is-rotation-of-another',
  NULL,
  'https://leetcode.com/problems/rotate-string/',
  '/plus/dsa/problems/rotate-string',
  '/plus/dsa/problems/rotate-string?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_140',
  'striver_a2z_sheet_id',
  'striver_sub_21',
  'Check if two strings are anagram of each other',
  7,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-two-strings-are-anagrams-of-each-other/',
  NULL,
  'https://leetcode.com/problems/valid-anagram/#:~:text=Given%20two%20strings%20s%20and,the%20original%20letters%20exactly%20once.&text=Constraints%3A,.length%20%3C%3D%205%20*%2010',
  '/plus/dsa/problems/valid-anagram',
  '/plus/dsa/problems/valid-anagram?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_141',
  'striver_a2z_sheet_id',
  'striver_sub_22',
  'Sort Characters by Frequency',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/sort-characters-by-frequency',
  NULL,
  'https://leetcode.com/problems/sort-characters-by-frequency/',
  '/plus/dsa/problems/sort-characters-by-frequency',
  '/plus/dsa/problems/sort-characters-by-frequency?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_142',
  'striver_a2z_sheet_id',
  'striver_sub_22',
  'Maximum Nesting Depth of the Parentheses',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/maximum-nesting-depth-of-parenthesis',
  NULL,
  'https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/',
  '/plus/dsa/problems/maximum-nesting-depth-of-the-parentheses',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_143',
  'striver_a2z_sheet_id',
  'striver_sub_22',
  'Roman to Integer',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/roman-numerals-to-integer',
  NULL,
  'https://leetcode.com/problems/roman-to-integer/',
  '/plus/dsa/problems/roman-to-integer',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_144',
  'striver_a2z_sheet_id',
  'striver_sub_22',
  'String to Integer (atoi)',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/recursive-implementation-of-atoi',
  NULL,
  'https://leetcode.com/problems/string-to-integer-atoi/',
  '/plus/dsa/problems/string-to-integer-atoi',
  '/plus/dsa/problems/string-to-integer-atoi?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_145',
  'striver_a2z_sheet_id',
  'striver_sub_22',
  'Count Number of Substrings',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/count-number-of-substrings',
  NULL,
  'https://leetcode.com/problems/subarrays-with-k-different-integers?utm=codolio',
  NULL,
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_146',
  'striver_a2z_sheet_id',
  'striver_sub_22',
  'Longest Palindromic Substring',
  6,
  'MEDIUM'::"Difficulty",
  NULL,
  NULL,
  'https://leetcode.com/problems/longest-palindromic-substring/',
  '/plus/dsa/problems/longest-palindromic-substring',
  '/plus/dsa/problems/longest-palindromic-substring?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_147',
  'striver_a2z_sheet_id',
  'striver_sub_22',
  'Sum of Beauty of All Substrings',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/sum-of-beauty-of-all-substring',
  NULL,
  'https://leetcode.com/problems/sum-of-beauty-of-all-substrings/',
  '/plus/dsa/problems/sum-of-beauty-of-all-substrings',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_148',
  'striver_a2z_sheet_id',
  'striver_sub_22',
  'Reverse every word in a string',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/reverse-words-in-a-string/',
  NULL,
  'https://leetcode.com/problems/reverse-words-in-a-string/',
  '/plus/dsa/problems/reverse-every-word-in-a-string',
  '/plus/dsa/problems/reverse-every-word-in-a-string?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_149',
  'striver_a2z_sheet_id',
  'striver_sub_24',
  'Introduction to Singly LinkedList',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/linked-list/linked-list-introduction',
  'https://youtu.be/Nq7ok-OyEpg?si=9PR1o8OPRWil7fRA',
  'https://www.geeksforgeeks.org/singly-linked-list/',
  '/plus/dsa/problems/introduction-to-singly-linkedlist',
  '/plus/dsa/problems/introduction-to-singly-linkedlist',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_150',
  'striver_a2z_sheet_id',
  'striver_sub_24',
  'Insertion at the head of Linked List',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/linked-list/insert-at-the-head-of-a-linked-list',
  'https://youtu.be/VaECK03Dz-g?si=vHSwdf9jhE05adKM&t=1934',
  'https://www.geeksforgeeks.org/inserting-a-node-linked-list/',
  '/plus/dsa/problems/insertion-at-the-head-of-ll',
  '/plus/dsa/problems/insertion-at-the-head-of-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_151',
  'striver_a2z_sheet_id',
  'striver_sub_24',
  'Deletion of the head of LL',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/delete-last-node-of-linked-list/',
  'https://youtu.be/VaECK03Dz-g?si=CRaBHbOo2bHFbOT5',
  'https://leetcode.com/problems/delete-node-in-a-linked-list/',
  '/plus/dsa/problems/deletion-of-the-head-of-ll',
  '/plus/dsa/problems/deletion-of-the-head-of-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_152',
  'striver_a2z_sheet_id',
  'striver_sub_24',
  'Find the length of the Linked List',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/linked-list/find-the-length-of-a-linked-list',
  'https://youtu.be/Nq7ok-OyEpg?si=xqQbukLfo2oZ6C6s&t=2240',
  'https://www.geeksforgeeks.org/find-length-of-a-linked-list-iterative-and-recursive/',
  '/plus/dsa/problems/find-the-length-of-the-linked-list',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_153',
  'striver_a2z_sheet_id',
  'striver_sub_24',
  'Search in Linked List',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/linked-list/search-an-element-in-a-linked-list',
  'https://youtu.be/Nq7ok-OyEpg?si=WNXcIaXZ_B6cNq0s&t=2524',
  'https://www.geeksforgeeks.org/search-an-element-in-a-linked-list-iterative-and-recursive/',
  '/plus/dsa/problems/search-in-linked-list',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_154',
  'striver_a2z_sheet_id',
  'striver_sub_25',
  'Introduction to Doubly LL',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/linked-list/introduction-to-doubly-linked-list',
  'https://youtu.be/0eKMU10uEDI?si=uDnoj_C5ghEpNLvP',
  'https://www.geeksforgeeks.org/doubly-linked-list/',
  '/plus/dsa/problems/introduction-to-doubly-ll',
  '/plus/dsa/problems/introduction-to-doubly-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_155',
  'striver_a2z_sheet_id',
  'striver_sub_25',
  'Insert node before head in Doubly Linked List',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/insert-at-end-of-doubly-linked-list/',
  'https://youtu.be/0eKMU10uEDI?si=J5a0pQTosimcO_aA&t=2684',
  'https://www.geeksforgeeks.org/doubly-linked-list/',
  '/plus/dsa/problems/insert-node-before-head-in-dll',
  '/plus/dsa/problems/insert-node-before-head-in-dll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_156',
  'striver_a2z_sheet_id',
  'striver_sub_25',
  'Delete head of Doubly Linked List',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/delete-last-node-of-a-doubly-linked-list/',
  'https://youtu.be/0eKMU10uEDI?si=sE7jqrW46lfRHVLd&t=853',
  'https://www.geeksforgeeks.org/delete-a-node-in-a-doubly-linked-list/',
  '/plus/dsa/problems/delete-head-of-dll',
  '/plus/dsa/problems/delete-head-of-dll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_157',
  'striver_a2z_sheet_id',
  'striver_sub_25',
  'Reverse a Doubly Linked List',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/reverse-a-doubly-linked-list/',
  'https://youtu.be/u3WUW2qe6ww?si=96Wwlju72IvmzkxE',
  'https://www.geeksforgeeks.org/reverse-a-doubly-linked-list/',
  '/plus/dsa/problems/reverse-a-doubly-linked-list',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_158',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Middle of a LinkedList [TortoiseHare Method]',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/find-middle-element-in-a-linked-list/',
  'https://youtu.be/7LjQ57RqgEc?si=ir_rRDio38rhamU_',
  'https://leetcode.com/problems/middle-of-the-linked-list/',
  '/plus/dsa/problems/find-middle-of-linked-list',
  '/plus/dsa/problems/find-middle-of-linked-list?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_159',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Reverse a LinkedList [Iterative]',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/reverse-a-linked-list/',
  'https://youtu.be/D2vI2DNJGd8?si=RCaLSx01qR21IBdh',
  'https://leetcode.com/problems/reverse-linked-list/',
  '/plus/dsa/problems/reverse-a-ll',
  '/plus/dsa/problems/reverse-a-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_160',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Reverse a LL',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/reverse-a-linked-list/',
  'https://youtu.be/D2vI2DNJGd8?si=RCaLSx01qR21IBdh',
  'https://leetcode.com/problems/reverse-linked-list/',
  '/plus/dsa/problems/reverse-a-ll',
  '/plus/dsa/problems/reverse-a-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_161',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Detect a loop in LL',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/detect-a-cycle-in-a-linked-list/',
  'https://youtu.be/wiOo4DC5GGA?si=zagt6O6tFXc4_3cx',
  'https://leetcode.com/problems/linked-list-cycle/',
  '/plus/dsa/problems/detect-a-loop-in-ll',
  '/plus/dsa/problems/detect-a-loop-in-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_162',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Find the starting point in LL',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/starting-point-of-loop-in-a-linked-list/',
  'https://youtu.be/2Kd0KKmmHFc?si=7UreDPRjRvapeVB0',
  'https://leetcode.com/problems/linked-list-cycle-ii/',
  '/plus/dsa/problems/find-the-starting-point-in-ll',
  '/plus/dsa/problems/find-the-starting-point-in-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_163',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Length of loop in LL',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/linked-list/length-of-loop-in-linked-list',
  'https://youtu.be/I4g1qbkTPus?si=ONktpqewvx57T8pF',
  'https://www.geeksforgeeks.org/length-of-loop-in-linked-list/',
  '/plus/dsa/problems/length-of-loop-in-ll',
  '/plus/dsa/problems/length-of-loop-in-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_164',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Check if LL is palindrome or not',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-given-linked-list-is-plaindrome/',
  'https://youtu.be/lRY_G-u_8jk?si=BpM8hRYvXSYyjl-G',
  'https://leetcode.com/problems/palindrome-linked-list/',
  '/plus/dsa/problems/check-if-ll-is-palindrome-or-not',
  '/plus/dsa/problems/check-if-ll-is-palindrome-or-not?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_165',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Segregate odd and even nodes in Linked List',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/segregate-even-and-odd-nodes-in-linkedlist',
  'https://youtu.be/qf6qp7GzD5Q?si=JozAyXUdT8EJMSCQ',
  'https://leetcode.com/problems/odd-even-linked-list/',
  '/plus/dsa/problems/segregate-odd-and-even-nodes-in-ll',
  '/plus/dsa/problems/segregate-odd-and-even-nodes-in-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_166',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Remove Nth node from the back of the LL',
  9,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/remove-n-th-node-from-the-end-of-a-linked-list/',
  'https://youtu.be/3kMKYQ2wNIU?si=DtFDnPU7z9HMz_GM',
  'https://leetcode.com/problems/remove-nth-node-from-end-of-list/',
  '/plus/dsa/problems/remove-nth-node-from-the-back-of-the-ll',
  '/plus/dsa/problems/remove-nth-node-from-the-back-of-the-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_167',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Delete the middle node in LL',
  10,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/linked-list/delete-the-middle-node-of-the-linked-list',
  'https://youtu.be/ePpV-_pfOeI?si=Au9GsZkVO57j6SiN',
  'https://leetcode.com/problems/delete-the-middle-node-of-a-linked-list/#:~:text=You%20are%20given%20the%20head,than%20or%20equal%20to%20x%20.',
  '/plus/dsa/problems/delete-the-middle-node-in-ll',
  '/plus/dsa/problems/delete-the-middle-node-in-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_168',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Sort LL',
  11,
  'HARD'::"Difficulty",
  'https://takeuforward.org/linked-list/sort-a-linked-list',
  'https://youtu.be/8ocB7a_c-Cc?si=Gv-Y8q8-WyARoV35',
  'https://leetcode.com/problems/sort-list/',
  '/plus/dsa/problems/sort-ll',
  '/plus/dsa/problems/sort-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_169',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Sort a Linked List of 0''s 1''s and 2''s',
  12,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/sort-a-linked-list-of-0s-1s-and-2s-by-changing-links',
  'https://youtu.be/gRII7LhdJWc?si=l3qRC7w3NhY7OAqw',
  'https://www.geeksforgeeks.org/sort-a-linked-list-of-0s-1s-or-2s/',
  '/plus/dsa/problems/sort-a-ll-of-0''s-1''s-and-2''s',
  '/plus/dsa/problems/sort-a-ll-of-0''s-1''s-and-2''s?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_170',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Find the intersection point of Y LL',
  13,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/find-intersection-of-two-linked-lists/',
  'https://youtu.be/0DYoPz2Tpt4?si=L-uJs5yXUxj4VJM2',
  'https://leetcode.com/problems/intersection-of-two-linked-lists/',
  '/plus/dsa/problems/find-the-intersection-point-of-y-ll',
  '/plus/dsa/problems/find-the-intersection-point-of-y-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_171',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Add one to a number represented by LL',
  14,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/add-1-to-a-number-represented-by-ll',
  'https://youtu.be/aXQWhbvT3w0?si=uRgU9S4r5cVmnUy7',
  'https://www.geeksforgeeks.org/add-1-number-represented-linked-list/',
  '/plus/dsa/problems/add-one-to-a-number-represented-by-ll',
  '/plus/dsa/problems/add-one-to-a-number-represented-by-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_172',
  'striver_a2z_sheet_id',
  'striver_sub_26',
  'Add two numbers in Linked List',
  15,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/add-two-numbers-represented-as-linked-lists/',
  'https://www.youtube.com/watch?v=LBVsXSMOIk4&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=32',
  'https://leetcode.com/problems/add-two-numbers/',
  '/plus/dsa/problems/add-two-numbers-in-ll',
  '/plus/dsa/problems/add-two-numbers-in-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_173',
  'striver_a2z_sheet_id',
  'striver_sub_27',
  'Delete all occurrences of a key in DLL',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/delete-all-occurrences-of-a-key-in-dll',
  'https://youtu.be/Mh0NH_SD92k?si=tCYshBRi1upMqSVz',
  'https://www.geeksforgeeks.org/delete-all-occurrences-of-a-given-key-in-a-doubly-linked-list/',
  '/plus/dsa/problems/delete-all-occurrences-of-a-key-in-dll',
  '/plus/dsa/problems/delete-all-occurrences-of-a-key-in-dll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_174',
  'striver_a2z_sheet_id',
  'striver_sub_27',
  'Find Pairs with Given Sum in Doubly Linked List',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/find-pairs-with-given-sum-in-doubly-linked-list',
  'https://youtu.be/YitR4dQsddE?si=iZAC259hdngV_OxC',
  'https://www.geeksforgeeks.org/find-pairs-given-sum-doubly-linked-list/',
  '/plus/dsa/problems/find-pairs-with-given-sum-in-doubly-linked-list',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_175',
  'striver_a2z_sheet_id',
  'striver_sub_27',
  'Remove duplicates from sorted DLL',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/remove-duplicates-from-sorted-dll',
  'https://youtu.be/YJKVTnOJXSY?si=AsZoNUoewetsBjr0',
  'https://www.geeksforgeeks.org/remove-duplicates-from-a-sorted-doubly-linked-list/',
  '/plus/dsa/problems/remove-duplicated-from-sorted-dll',
  '/plus/dsa/problems/remove-duplicated-from-sorted-dll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_176',
  'striver_a2z_sheet_id',
  'striver_sub_28',
  'Reverse LL in group of given size K',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/reverse-linked-list-in-groups-of-size-k/',
  'https://youtu.be/lIar1skcQYI?si=_jFghHKX4eaK36a1',
  'https://leetcode.com/problems/reverse-nodes-in-k-group/',
  '/plus/dsa/problems/reverse-ll-in-group-of-given-size-k',
  '/plus/dsa/problems/reverse-ll-in-group-of-given-size-k?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_177',
  'striver_a2z_sheet_id',
  'striver_sub_28',
  'Rotate a LL',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/rotate-a-linked-list/',
  'https://youtu.be/uT7YI7XbTY8?si=ZaChW3a68c_v54Is',
  'https://leetcode.com/problems/rotate-list/description/',
  '/plus/dsa/problems/rotate-a-ll',
  '/plus/dsa/problems/rotate-a-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_178',
  'striver_a2z_sheet_id',
  'striver_sub_28',
  'Flattening of LL',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/flattening-a-linked-list/',
  'https://youtu.be/ykelywHJWLg?si=InMg9MmTHzY22NSR',
  'https://www.geeksforgeeks.org/flattening-a-linked-list/',
  '/plus/dsa/problems/flattening-of-ll',
  '/plus/dsa/problems/flattening-of-ll?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_179',
  'striver_a2z_sheet_id',
  'striver_sub_28',
  'Clone a LL with random and next pointer',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/clone-linked-list-with-random-and-next-pointer/',
  'https://youtu.be/q570bKdrnlw?si=epZtpWvtNwuTf23o',
  'https://leetcode.com/problems/copy-list-with-random-pointer/',
  '/plus/dsa/problems/clone-a-ll-with-random-and-next-pointer',
  '/plus/dsa/problems/clone-a-ll-with-random-and-next-pointer?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_180',
  'striver_a2z_sheet_id',
  'striver_sub_30',
  'Recursive Implementation of atoi()',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/recursive-implementation-of-atoi',
  NULL,
  'https://leetcode.com/problems/string-to-integer-atoi/',
  '/plus/dsa/problems/string-to-integer-atoi',
  '/plus/dsa/problems/string-to-integer-atoi?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_181',
  'striver_a2z_sheet_id',
  'striver_sub_30',
  'Pow(x, n)',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/implement-powxn-x-raised-to-the-power-n/',
  'https://youtu.be/l0YC3876qxg',
  'https://leetcode.com/problems/powx-n/',
  '/plus/dsa/problems/pow(x,n)',
  '/plus/dsa/problems/pow(x,n)?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_182',
  'striver_a2z_sheet_id',
  'striver_sub_30',
  'Count Good Numbers',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/count-good-numbers',
  NULL,
  'https://leetcode.com/problems/count-good-numbers/',
  '/plus/dsa/problems/count-good-numbers',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_183',
  'striver_a2z_sheet_id',
  'striver_sub_30',
  'Sort a stack using recursion',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/sort-a-stack',
  NULL,
  'https://www.geeksforgeeks.org/sort-a-stack-using-recursion/',
  '/plus/dsa/problems/sort-a-stack',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_184',
  'striver_a2z_sheet_id',
  'striver_sub_30',
  'Reverse a Stack',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/reverse-a-stack-using-recursion',
  NULL,
  'https://www.geeksforgeeks.org/reverse-a-stack-using-recursion/',
  '/plus/dsa/problems/reverse-a-stack',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_185',
  'striver_a2z_sheet_id',
  'striver_sub_31',
  'Generate Binary Strings Without Consecutive 1s',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/generate-all-binary-strings',
  NULL,
  'https://www.geeksforgeeks.org/generate-binary-strings-without-consecutive-1s/',
  '/plus/dsa/problems/generate-binary-strings-without-consecutive-1s',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_186',
  'striver_a2z_sheet_id',
  'striver_sub_31',
  'Generate Parentheses',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/generate-parenthesis',
  NULL,
  'https://leetcode.com/problems/generate-parentheses/',
  '/plus/dsa/problems/generate-parentheses',
  '/plus/dsa/problems/generate-parentheses?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_187',
  'striver_a2z_sheet_id',
  'striver_sub_31',
  'Power Set',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/power-set-print-all-the-possible-subsequences-of-the-string/',
  'https://www.youtube.com/watch?v=b7AYbpM5YrE&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=67',
  'https://leetcode.com/problems/subsets?utm=codolio',
  '/plus/dsa/problems/power-set',
  '/plus/dsa/problems/power-set?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_188',
  'striver_a2z_sheet_id',
  'striver_sub_31',
  'Learn All Patterns of Subsequences (Theory)',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/learn-all-patterns-of-subsequences-theory',
  'https://www.youtube.com/watch?v=eQCS_v3bw0Q&list=PLgUwDviBIf0rGlzIn_7rsaR2FQ5e6ZOL9&index=7',
  'https://leetcode.com/problems/distinct-subsequences-ii?utm=codolio',
  NULL,
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_189',
  'striver_a2z_sheet_id',
  'striver_sub_31',
  'Count all subsequences with sum K',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/count-all-subsequences-with-sum-k',
  NULL,
  'https://www.geeksforgeeks.org/count-of-subsets-with-sum-equal-to-x/',
  '/plus/dsa/problems/count-all-subsequences-with-sum-k',
  '/plus/dsa/problems/count-all-subsequences-with-sum-k?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_190',
  'striver_a2z_sheet_id',
  'striver_sub_31',
  'Check if there exists a subsequence with sum K',
  6,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-there-exists-a-subsequence-with-sum-k',
  NULL,
  'https://www.geeksforgeeks.org/check-if-a-subsequence-of-length-k-exists-in-an-array/',
  '/plus/dsa/problems/check-if-there-exists-a-subsequence-with-sum-k',
  '/plus/dsa/problems/check-if-there-exists-a-subsequence-with-sum-k?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_191',
  'striver_a2z_sheet_id',
  'striver_sub_31',
  'Combination Sum',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/combination-sum-1/',
  'https://www.youtube.com/watch?v=OyZFFqQtu98&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=49',
  'https://leetcode.com/problems/combination-sum/',
  '/plus/dsa/problems/combination-sum',
  '/plus/dsa/problems/combination-sum?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_192',
  'striver_a2z_sheet_id',
  'striver_sub_31',
  'Combination Sum II',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/combination-sum-ii-find-all-unique-combinations/',
  'https://www.youtube.com/watch?v=G1fRTGRxXU8&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=50',
  'https://leetcode.com/problems/combination-sum-ii/',
  '/plus/dsa/problems/combination-sum-ii',
  '/plus/dsa/problems/combination-sum-ii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_193',
  'striver_a2z_sheet_id',
  'striver_sub_31',
  'Subsets I',
  9,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/subset-sum-sum-of-all-subsets/',
  'https://www.youtube.com/watch?v=rYkfBRtMJr8&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=52',
  'https://leetcode.com/problems/subsets/',
  '/plus/dsa/problems/subsets-i',
  '/plus/dsa/problems/subsets-i?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_194',
  'striver_a2z_sheet_id',
  'striver_sub_31',
  'Subsets II',
  10,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/subset-ii-print-all-the-unique-subsets/',
  'https://www.youtube.com/watch?v=RIn3gOkbhQE&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=53',
  'https://leetcode.com/problems/subsets-ii/',
  '/plus/dsa/problems/subsets-ii',
  '/plus/dsa/problems/subsets-ii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_195',
  'striver_a2z_sheet_id',
  'striver_sub_31',
  'Combination Sum III',
  11,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/combination-sum-iii',
  NULL,
  'https://leetcode.com/problems/combination-sum-iii/',
  '/plus/dsa/problems/combination-sum-iii',
  '/plus/dsa/problems/combination-sum-iii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_196',
  'striver_a2z_sheet_id',
  'striver_sub_31',
  'Letter Combinations of a Phone Number',
  12,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/letter-combinations-of-a-phone-number',
  NULL,
  'https://leetcode.com/problems/letter-combinations-of-a-phone-number/',
  '/plus/dsa/problems/letter-combinations-of-a-phone-number',
  '/plus/dsa/problems/letter-combinations-of-a-phone-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_197',
  'striver_a2z_sheet_id',
  'striver_sub_32',
  'Palindrome partitioning',
  1,
  'HARD'::"Difficulty",
  NULL,
  'https://youtu.be/_H8V5hJUGd0',
  'https://leetcode.com/problems/palindrome-partitioning?utm=codolio',
  '/plus/dsa/problems/palindrome-partitioning',
  '/plus/dsa/problems/palindrome-partitioning?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_198',
  'striver_a2z_sheet_id',
  'striver_sub_32',
  'Word Search',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/word-search-leetcode/',
  NULL,
  'https://leetcode.com/problems/word-search/',
  '/plus/dsa/problems/word-search',
  '/plus/dsa/problems/word-search?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_199',
  'striver_a2z_sheet_id',
  'striver_sub_32',
  'N Queen',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/n-queen-problem-return-all-distinct-solutions-to-the-n-queens-puzzle/',
  'https://www.youtube.com/watch?v=i05Ju7AftcM&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=57',
  'https://leetcode.com/problems/n-queens/',
  '/plus/dsa/problems/n-queen',
  '/plus/dsa/problems/n-queen?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_200',
  'striver_a2z_sheet_id',
  'striver_sub_32',
  'Rat in a Maze',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/rat-in-a-maze/',
  'https://www.youtube.com/watch?v=bLGZhJlt4y0&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=60',
  'https://www.geeksforgeeks.org/rat-in-a-maze-problem-first-maze-with-one-allowed-move/',
  '/plus/dsa/problems/rat-in-a-maze',
  '/plus/dsa/problems/rat-in-a-maze?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_201',
  'striver_a2z_sheet_id',
  'striver_sub_32',
  'Word Break',
  5,
  'MEDIUM'::"Difficulty",
  NULL,
  NULL,
  'https://leetcode.com/problems/word-break?utm=codolio',
  '/plus/dsa/problems/word-break',
  '/plus/dsa/problems/word-break?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_202',
  'striver_a2z_sheet_id',
  'striver_sub_32',
  'M Coloring Problem',
  6,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/m-coloring-problem/',
  'https://www.youtube.com/watch?v=wuVwUK25Rfc&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=59',
  'https://www.geeksforgeeks.org/graph-coloring-applications/',
  '/plus/dsa/problems/m-coloring-problem',
  '/plus/dsa/problems/m-coloring-problem?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_203',
  'striver_a2z_sheet_id',
  'striver_sub_32',
  'Sudoku Solver',
  7,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/sudoku-solver/',
  'https://www.youtube.com/watch?v=FWAIf_EVUKE&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=58',
  'https://leetcode.com/problems/sudoku-solver/',
  '/plus/dsa/problems/sudoko-solver',
  '/plus/dsa/problems/sudoko-solver?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_204',
  'striver_a2z_sheet_id',
  'striver_sub_32',
  'Expression Add Operators',
  8,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/expression-add-operators',
  NULL,
  'https://leetcode.com/problems/expression-add-operators/',
  '/plus/dsa/problems/expression-add-operators',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_205',
  'striver_a2z_sheet_id',
  'striver_sub_34',
  'Introduction to Bits and Tricks',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/introduction-to-bit-manipulation-theory',
  'https://youtu.be/qQd-ViW7bfk?si=QtdNaRhHmZb08Mr8',
  'https://www.geeksforgeeks.org/bit-tricks-competitive-programming/',
  '/plus/dsa/problems/introduction-to-bits-and-tricks',
  '/plus/dsa/problems/introduction-to-bits-and-tricks?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_206',
  'striver_a2z_sheet_id',
  'striver_sub_34',
  'Check if the i-th bit is Set or Not',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-the-i-th-bit-is-set-or-not',
  'https://youtu.be/nttpF8kwgd4?si=x9o8PsYaA2XVZ9rV',
  'https://www.geeksforgeeks.org/check-whether-k-th-bit-set-not/',
  '/plus/dsa/problems/check-if-the-i-th-bit-is-set-or-not',
  '/plus/dsa/problems/check-if-the-i-th-bit-is-set-or-not?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_207',
  'striver_a2z_sheet_id',
  'striver_sub_34',
  'Check if a Number is Odd or Not',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-a-number-is-odd-or-not',
  'https://youtu.be/nttpF8kwgd4?si=x9o8PsYaA2XVZ9rV',
  'https://leetcode.com/problems/number-of-1-bits/',
  '/plus/dsa/problems/check-if-a-number-is-odd-or-not',
  '/plus/dsa/problems/check-if-a-number-is-odd-or-not?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_208',
  'striver_a2z_sheet_id',
  'striver_sub_34',
  'Check if a Number is Power of 2 or Not',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-a-number-is-power-of-2-or-not',
  'https://youtu.be/nttpF8kwgd4?si=x9o8PsYaA2XVZ9rV',
  'https://leetcode.com/problems/power-of-two/',
  '/plus/dsa/problems/check-if-a-number-is-power-of-2-or-not',
  '/plus/dsa/problems/check-if-a-number-is-power-of-2-or-not?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_209',
  'striver_a2z_sheet_id',
  'striver_sub_34',
  'Count the Number of Set Bits',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/count-the-number-of-set-bits',
  'https://youtu.be/nttpF8kwgd4?si=x9o8PsYaA2XVZ9rV',
  'https://leetcode.com/problems/number-of-1-bits/',
  '/plus/dsa/problems/count-the-number-of-set-bits',
  '/plus/dsa/problems/count-the-number-of-set-bits?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_210',
  'striver_a2z_sheet_id',
  'striver_sub_34',
  'Set/Unset the rightmost unset bit',
  6,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/set-the-rightmost-bit',
  'https://youtu.be/nttpF8kwgd4?si=x9o8PsYaA2XVZ9rV',
  'https://www.geeksforgeeks.org/set-unset-rightmost-unset-bit/',
  NULL,
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_211',
  'striver_a2z_sheet_id',
  'striver_sub_34',
  'Swap Two Numbers',
  7,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/swap-two-numbers',
  'https://youtu.be/nttpF8kwgd4?si=x9o8PsYaA2XVZ9rV',
  'https://www.geeksforgeeks.org/swap-two-numbers-without-using-temporary-variable/',
  '/plus/dsa/problems/swap-two-numbers',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_212',
  'striver_a2z_sheet_id',
  'striver_sub_34',
  'Divide two numbers without multiplication and division',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/divide-two-integers-without-using-multiplication-division-and-mod-operator',
  'https://youtu.be/pBD4B1tzgVc?si=G9c5pEE-RrzeU6sz',
  'https://leetcode.com/problems/divide-two-integers/',
  '/plus/dsa/problems/divide-two-numbers-without-multiplication-and-division',
  '/plus/dsa/problems/divide-two-numbers-without-multiplication-and-division?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_213',
  'striver_a2z_sheet_id',
  'striver_sub_35',
  'Minimum Bit Flips to Convert Number',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/count-number-of-bits-to-be-flipped-to-convert-a-to-b',
  'https://youtu.be/OOdrmcfZXd8?si=rnkRVz1UiVBKWC69',
  'https://leetcode.com/problems/minimum-bit-flips-to-convert-number/',
  '/plus/dsa/problems/minimum-bit-flips-to-convert-number',
  '/plus/dsa/problems/minimum-bit-flips-to-convert-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_214',
  'striver_a2z_sheet_id',
  'striver_sub_35',
  'Single Number - I',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/arrays/find-the-number-that-appears-once-and-the-other-numbers-twice/',
  'https://youtu.be/bYWLJb3vCWY?t=1369',
  'https://leetcode.com/problems/single-number/',
  '/plus/dsa/problems/single-number---i',
  '/plus/dsa/problems/single-number---i?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_215',
  'striver_a2z_sheet_id',
  'striver_sub_35',
  'Power Set Bit Manipulation',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/bit-manipulation/power-set-bit-manipulation',
  'https://youtu.be/LqKaUv1G3_I?si=UXU_T5OsHiokPRvP',
  'https://leetcode.com/problems/subsets/',
  '/plus/dsa/problems/power-set-bit-manipulation',
  '/plus/dsa/problems/power-set-bit-manipulation?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_216',
  'striver_a2z_sheet_id',
  'striver_sub_35',
  'XOR of numbers in a given range',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/find-xor-of-numbers-from-l-to-r',
  'https://youtu.be/WqGb7159h7Q?si=uGUEbNUUaIN_6Vvr',
  'https://www.geeksforgeeks.org/xor-of-all-numbers-from-l-to-r/',
  '/plus/dsa/problems/xor-of-numbers-in-a-given-range',
  '/plus/dsa/problems/xor-of-numbers-in-a-given-range?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_217',
  'striver_a2z_sheet_id',
  'striver_sub_35',
  'Single Number - III',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/find-the-two-numbers-appearing-odd-number-of-times',
  'https://youtu.be/UA5JnV1J2sI?si=VFBRJyb3boZvx_r1',
  'https://leetcode.com/problems/single-number-iii/',
  '/plus/dsa/problems/single-number---iii',
  '/plus/dsa/problems/single-number---iii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_218',
  'striver_a2z_sheet_id',
  'striver_sub_36',
  'Print Prime Factors of a Number',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/find-the-two-numbers-appearing-odd-number-of-times',
  'https://youtu.be/LT7XhVdeRyg?si=6HkjQokJRPTFai21',
  'https://www.geeksforgeeks.org/print-all-prime-factors-of-a-given-number/',
  '/plus/dsa/problems/prime-factorisation-of-a-number',
  '/plus/dsa/problems/prime-factorisation-of-a-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_219',
  'striver_a2z_sheet_id',
  'striver_sub_36',
  'Divisors of a Number',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/print-all-divisors-of-a-given-number/',
  'https://youtu.be/1xNbjMdbjug?t=1580',
  'https://www.geeksforgeeks.org/find-all-divisors-of-a-natural-number-set-2/',
  '/plus/dsa/problems/divisors-of-a-number',
  '/plus/dsa/problems/divisors-of-a-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_220',
  'striver_a2z_sheet_id',
  'striver_sub_36',
  'Count primes in range L to R',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/sieve-of-eratosthenes',
  'https://youtu.be/g5Fuxn_AvSk?si=fv6Q-Po7wrMW0a5n',
  'https://leetcode.com/problems/count-primes/',
  '/plus/dsa/problems/count-primes-in-range-l-to-r',
  '/plus/dsa/problems/count-primes-in-range-l-to-r?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_221',
  'striver_a2z_sheet_id',
  'striver_sub_36',
  'Prime factorisation of a Number',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/find-the-two-numbers-appearing-odd-number-of-times',
  'https://youtu.be/LT7XhVdeRyg?si=6HkjQokJRPTFai21',
  'https://www.geeksforgeeks.org/prime-factorization-using-sieve-olog-n-multiple-queries/',
  '/plus/dsa/problems/prime-factorisation-of-a-number',
  '/plus/dsa/problems/prime-factorisation-of-a-number?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_222',
  'striver_a2z_sheet_id',
  'striver_sub_36',
  'Pow(x,n)',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/implement-powxn-x-raised-to-the-power-n/',
  'https://youtu.be/l0YC3876qxg',
  'https://leetcode.com/problems/powx-n/',
  '/plus/dsa/problems/pow(x,n)',
  '/plus/dsa/problems/pow(x,n)?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_223',
  'striver_a2z_sheet_id',
  'striver_sub_38',
  'Implement Stack using Arrays',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/implement-stack-using-array/',
  'https://youtu.be/tqQ5fTamIN4?si=ofLt8Zt1ZvhikZ6w',
  'https://www.geeksforgeeks.org/stack-data-structure-introduction-program/',
  '/plus/dsa/problems/implement-stack-using-arrays',
  '/plus/dsa/problems/implement-stack-using-arrays?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_224',
  'striver_a2z_sheet_id',
  'striver_sub_38',
  'Implement Queue using Arrays',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/implement-queue-using-array/',
  'https://youtu.be/tqQ5fTamIN4?si=ofLt8Zt1ZvhikZ6w',
  'https://www.geeksforgeeks.org/array-implementation-of-queue-simple/',
  '/plus/dsa/problems/implement-queue-using-arrays',
  '/plus/dsa/problems/implement-queue-using-arrays?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_225',
  'striver_a2z_sheet_id',
  'striver_sub_38',
  'Implement Stack using Queue',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/implement-stack-using-single-queue',
  'https://youtu.be/tqQ5fTamIN4?si=ofLt8Zt1ZvhikZ6w',
  'https://leetcode.com/problems/implement-stack-using-queues/',
  '/plus/dsa/problems/implement-stack-using-queue',
  '/plus/dsa/problems/implement-stack-using-queue?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_226',
  'striver_a2z_sheet_id',
  'striver_sub_38',
  'Implement Queue using Stack',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/implement-queue-using-stack/',
  'https://youtu.be/tqQ5fTamIN4?si=ofLt8Zt1ZvhikZ6w',
  'https://leetcode.com/problems/implement-queue-using-stacks/',
  '/plus/dsa/problems/implement-queue-using-stack',
  '/plus/dsa/problems/implement-queue-using-stack?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_227',
  'striver_a2z_sheet_id',
  'striver_sub_38',
  'Implement stack using Linkedlist',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/implement-stack-using-linked-list/',
  'https://youtu.be/tqQ5fTamIN4?si=ofLt8Zt1ZvhikZ6w',
  'https://www.geeksforgeeks.org/implement-a-stack-using-singly-linked-list/',
  '/plus/dsa/problems/implement-stack-using-linkedlist',
  '/plus/dsa/problems/implement-stack-using-linkedlist?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_228',
  'striver_a2z_sheet_id',
  'striver_sub_38',
  'Implement queue using Linkedlist',
  6,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/implement-queue-using-linked-list/',
  'https://youtu.be/tqQ5fTamIN4?si=ofLt8Zt1ZvhikZ6w',
  'https://www.geeksforgeeks.org/queue-linked-list-implementation/',
  '/plus/dsa/problems/implement-queue-using-linkedlist',
  '/plus/dsa/problems/implement-queue-using-linkedlist?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_229',
  'striver_a2z_sheet_id',
  'striver_sub_38',
  'Balanced Paranthesis',
  7,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/check-for-balanced-parentheses/',
  'https://youtu.be/xwjS0iZhw4I?si=UoyKpFn4Q3nf5h2R',
  'https://leetcode.com/problems/valid-parentheses/',
  '/plus/dsa/problems/balanced-paranthesis',
  '/plus/dsa/problems/balanced-paranthesis?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_230',
  'striver_a2z_sheet_id',
  'striver_sub_38',
  'Implement Min Stack',
  8,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/implement-min-stack-o2n-and-on-space-complexity/',
  'https://youtu.be/NdDIaH91P0g?si=4_Jbsq5trFvfSdUY',
  'https://leetcode.com/problems/min-stack/',
  '/plus/dsa/problems/implement-min-stack',
  '/plus/dsa/problems/implement-min-stack?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_231',
  'striver_a2z_sheet_id',
  'striver_sub_39',
  'Infix to Postfix Conversion',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/infix-to-postfix/',
  'https://youtu.be/4pIc9UBHJtk?si=ryeVvQWpCgwbTQrh',
  'https://www.geeksforgeeks.org/convert-infix-expression-to-postfix-expression/',
  '/plus/dsa/problems/infix-to-postfix-conversion',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_232',
  'striver_a2z_sheet_id',
  'striver_sub_39',
  'Prefix to Infix Conversion',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/prefix-to-infix-conversion',
  'https://youtu.be/4pIc9UBHJtk?si=ryeVvQWpCgwbTQrh',
  'https://www.geeksforgeeks.org/prefix-infix-conversion/',
  '/plus/dsa/problems/prefix-to-infix-conversion',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_233',
  'striver_a2z_sheet_id',
  'striver_sub_39',
  'Prefix to Postfix Conversion',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/prefix-to-postfix-conversion',
  'https://youtu.be/4pIc9UBHJtk?si=0pWtyDC1GhbiYP3P',
  'https://www.geeksforgeeks.org/prefix-postfix-conversion/',
  '/plus/dsa/problems/prefix-to-postfix-conversion',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_234',
  'striver_a2z_sheet_id',
  'striver_sub_39',
  'Postfix to Prefix Conversion',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/postfix-to-prefix-conversion',
  'https://youtu.be/4pIc9UBHJtk?si=0pWtyDC1GhbiYP3P',
  'https://www.geeksforgeeks.org/postfix-prefix-conversion/',
  '/plus/dsa/problems/postfix-to-prefix-conversion',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_235',
  'striver_a2z_sheet_id',
  'striver_sub_39',
  'Postfix to Infix Conversion',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/postfix-to-infix',
  'https://youtu.be/4pIc9UBHJtk?si=0pWtyDC1GhbiYP3P',
  'https://www.geeksforgeeks.org/postfix-to-infix/',
  '/plus/dsa/problems/postfix-to-infix-conversion',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_236',
  'striver_a2z_sheet_id',
  'striver_sub_39',
  'Infix to Prefix Conversion',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/infix-to-prefix/',
  'https://youtu.be/4pIc9UBHJtk?si=0pWtyDC1GhbiYP3P',
  'https://www.geeksforgeeks.org/convert-infix-prefix-notation/',
  '/plus/dsa/problems/infix-to-prefix-conversion',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_237',
  'striver_a2z_sheet_id',
  'striver_sub_40',
  'Next Greater Element',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/next-greater-element-using-stack/',
  'https://youtu.be/e7XQLtOQM3I?si=QdcHpTtx6gAHsext',
  'https://leetcode.com/problems/next-greater-element-i/',
  '/plus/dsa/problems/next-greater-element',
  '/plus/dsa/problems/next-greater-element?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_238',
  'striver_a2z_sheet_id',
  'striver_sub_40',
  'Next Greater Element - 2',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/next-greater-element-2',
  'https://youtu.be/7PrncD7v9YQ?si=UkBc7eVy9HGlBpeW',
  'https://leetcode.com/problems/next-greater-element-ii/',
  '/plus/dsa/problems/next-greater-element---2',
  '/plus/dsa/problems/next-greater-element---2?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_239',
  'striver_a2z_sheet_id',
  'striver_sub_40',
  'Next Smaller Element',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/next-smaller-element',
  NULL,
  'https://www.geeksforgeeks.org/next-smaller-element/',
  '/plus/dsa/problems/next-smaller-element',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_240',
  'striver_a2z_sheet_id',
  'striver_sub_40',
  'Number of Greater Elements to the Right',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/number-of-nges-to-the-right',
  NULL,
  'https://www.geeksforgeeks.org/number-greater-elements-right-side/',
  '/plus/dsa/problems/number-of-greater-elements-to-the-right',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_241',
  'striver_a2z_sheet_id',
  'striver_sub_40',
  'Trapping Rainwater',
  5,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/trapping-rainwater/',
  'https://youtu.be/1_5VuquLbXg?si=NFG6df318_6OtGvg',
  'https://leetcode.com/problems/trapping-rain-water/',
  '/plus/dsa/problems/trapping-rainwater',
  '/plus/dsa/problems/trapping-rainwater?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_242',
  'striver_a2z_sheet_id',
  'striver_sub_40',
  'Sum of Subarray Minimums',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/sum-of-subarray-minimums',
  'https://youtu.be/v0e8p9JCgRc?si=XAU7ekECgS5nboRw',
  'https://leetcode.com/problems/sum-of-subarray-minimums/',
  '/plus/dsa/problems/sum-of-subarray-minimums',
  '/plus/dsa/problems/sum-of-subarray-minimums?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_243',
  'striver_a2z_sheet_id',
  'striver_sub_40',
  'Asteroid Collision',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/asteroid-collision',
  'https://youtu.be/_eYGqw_VDR4?si=YyxibcHq800RqgIQ',
  'https://leetcode.com/problems/asteroid-collision/',
  '/plus/dsa/problems/asteroid-collision',
  '/plus/dsa/problems/asteroid-collision?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_244',
  'striver_a2z_sheet_id',
  'striver_sub_40',
  'Sum of Subarray Ranges',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/sum-of-subarray-ranges',
  'https://youtu.be/gIrMptNPf5M?si=Q_GHuBvzZVs27X_U',
  'https://leetcode.com/problems/sum-of-subarray-ranges/',
  '/plus/dsa/problems/sum-of-subarray-ranges',
  '/plus/dsa/problems/sum-of-subarray-ranges?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_245',
  'striver_a2z_sheet_id',
  'striver_sub_40',
  'Remove K Digits',
  9,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/remove-k-digits',
  'https://youtu.be/jmbuRzYPGrg?si=WN387gwQ7aXWkUao',
  'https://leetcode.com/problems/remove-k-digits/',
  '/plus/dsa/problems/remove-k-digits',
  '/plus/dsa/problems/remove-k-digits?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_246',
  'striver_a2z_sheet_id',
  'striver_sub_40',
  'Largest rectangle in a histogram',
  10,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/area-of-largest-rectangle-in-histogram/',
  'https://youtu.be/Bzat9vgD0fs?si=DiBlLejXcr6EJoyB',
  'https://leetcode.com/problems/largest-rectangle-in-histogram/',
  '/plus/dsa/problems/largest-rectangle-in-a-histogram',
  '/plus/dsa/problems/largest-rectangle-in-a-histogram?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_247',
  'striver_a2z_sheet_id',
  'striver_sub_40',
  'Maximum Rectangles',
  11,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/maximum-rectangle-area-with-all-1s-dp-on-rectangles-dp-55/',
  'https://youtu.be/tOylVCugy9k',
  'https://leetcode.com/problems/maximal-rectangle/',
  '/plus/dsa/problems/maximum-rectangles',
  '/plus/dsa/problems/maximum-rectangles?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_248',
  'striver_a2z_sheet_id',
  'striver_sub_41',
  'Sliding Window Maximum',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/sliding-window-maximum/',
  'https://youtu.be/NwBvene4Imo?si=eU1PY-bcQfk5wdog',
  'https://leetcode.com/problems/sliding-window-maximum/',
  '/plus/dsa/problems/sliding-window-maximum',
  '/plus/dsa/problems/sliding-window-maximum?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_249',
  'striver_a2z_sheet_id',
  'striver_sub_41',
  'Stock span problem',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/stock-span-problem',
  'https://youtu.be/eay-zoSRkVc?si=deNNe5i38BOAntha',
  'https://leetcode.com/problems/online-stock-span/',
  '/plus/dsa/problems/stock-span-problem',
  '/plus/dsa/problems/stock-span-problem?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_250',
  'striver_a2z_sheet_id',
  'striver_sub_41',
  'Celebrity Problem',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/celebrity-problem',
  'https://youtu.be/cEadsbTeze4?si=olXYfOs7l-SEn2zl',
  'https://leetcode.com/accounts/login/?next=/problems/find-the-celebrity/',
  '/plus/dsa/problems/celebrity-problem',
  '/plus/dsa/problems/celebrity-problem?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_251',
  'striver_a2z_sheet_id',
  'striver_sub_41',
  'LRU Cache',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/program-for-least-recently-used-lru-page-replacement-algorithm',
  NULL,
  'https://leetcode.com/problems/lru-cache?utm=codolio',
  '/plus/dsa/problems/lru-cache',
  '/plus/dsa/problems/lru-cache?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_252',
  'striver_a2z_sheet_id',
  'striver_sub_41',
  'LFU Cache',
  5,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/lfu-cache',
  'https://www.youtube.com/watch?v=0PSB9y8ehbk&list=PLgUwDviBIf0p4ozDR_kJJkONnb1wdx2Ma&index=79',
  'https://leetcode.com/problems/lfu-cache/',
  '/plus/dsa/problems/lfu-cache',
  '/plus/dsa/problems/lfu-cache?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_253',
  'striver_a2z_sheet_id',
  'striver_sub_43',
  'Longest Substring Without Repeating Characters',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/length-of-longest-substring-without-any-repeating-character/',
  'https://youtu.be/-zSxTJkcdAo?si=I2zfR-vlDMg0zU9z',
  'https://leetcode.com/problems/longest-substring-without-repeating-characters/',
  '/plus/dsa/problems/longest-substring-without-repeating-characters',
  '/plus/dsa/problems/longest-substring-without-repeating-characters?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_254',
  'striver_a2z_sheet_id',
  'striver_sub_43',
  ' Max Consecutive Ones III',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/max-consecutive-ones-iii',
  'https://youtu.be/3E4JBHSLpYk?si=SoOW64pP6otEKxBw',
  'https://leetcode.com/problems/max-consecutive-ones-iii/',
  '/plus/dsa/problems/max-consecutive-ones-iii',
  '/plus/dsa/problems/max-consecutive-ones-iii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_255',
  'striver_a2z_sheet_id',
  'striver_sub_43',
  ' Fruit Into Baskets',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/fruit-into-baskets',
  'https://youtu.be/e3bs0uA1NhQ?si=gR8pO62u-nJeFAXk',
  'https://leetcode.com/problems/fruit-into-baskets/',
  '/plus/dsa/problems/fruit-into-baskets',
  '/plus/dsa/problems/fruit-into-baskets?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_256',
  'striver_a2z_sheet_id',
  'striver_sub_43',
  'Longest Repeating Character Replacement',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-repeating-character-replacement',
  'https://youtu.be/_eNhaDCr6P0?si=pBWcEjozF5poom0p',
  'https://leetcode.com/problems/longest-repeating-character-replacement/',
  '/plus/dsa/problems/longest-repeating-character-replacement',
  '/plus/dsa/problems/longest-repeating-character-replacement?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_257',
  'striver_a2z_sheet_id',
  'striver_sub_43',
  'Binary Subarrays With Sum',
  5,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/binary-subarray-with-sum',
  'https://youtu.be/XnMdNUkX6VM?si=Nyt8EveeLUg8lmty',
  'https://leetcode.com/problems/binary-subarrays-with-sum/',
  '/plus/dsa/problems/binary-subarrays-with-sum',
  '/plus/dsa/problems/binary-subarrays-with-sum?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_258',
  'striver_a2z_sheet_id',
  'striver_sub_43',
  'Count number of Nice subarrays',
  6,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/count-number-of-nice-subarrays',
  'https://youtu.be/j_QOv9OT9Og?si=Oq5-5hyFkzVSOZpP',
  'https://leetcode.com/problems/count-number-of-nice-subarrays/',
  '/plus/dsa/problems/count-number-of-nice-subarrays',
  '/plus/dsa/problems/count-number-of-nice-subarrays?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_259',
  'striver_a2z_sheet_id',
  'striver_sub_43',
  'Number of Substrings Containing All Three Characters',
  7,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/number-of-substring-containing-all-three-characters',
  'https://youtu.be/xtqN4qlgr8s?si=kuaLHVOLXhh5Z2tW',
  'https://leetcode.com/problems/number-of-substrings-containing-all-three-characters/',
  '/plus/dsa/problems/number-of-substrings-containing-all-three-characters',
  '/plus/dsa/problems/number-of-substrings-containing-all-three-characters?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_260',
  'striver_a2z_sheet_id',
  'striver_sub_43',
  'Maximum Points You Can Obtain from Cards ',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/maximum-point-you-can-obtain-from-cards',
  'https://youtu.be/pBWCOCS636U?si=-X64rY67noxvOwrG',
  'https://leetcode.com/problems/maximum-points-you-can-obtain-from-cards/',
  '/plus/dsa/problems/maximum-points-you-can-obtain-from-cards-',
  '/plus/dsa/problems/maximum-points-you-can-obtain-from-cards-?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_261',
  'striver_a2z_sheet_id',
  'striver_sub_44',
  'Longest Substring With At Most K Distinct Characters',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-substring-with-at-most-k-distinct-characters',
  'https://youtu.be/teM9ZsVRQyc?si=Kh0_u6aCkkBU3Q33',
  'https://leetcode.com/problems/longest-substring-with-at-most-k-distinct-characters/',
  '/plus/dsa/problems/longest-substring-with-at-most-k-distinct-characters',
  '/plus/dsa/problems/longest-substring-with-at-most-k-distinct-characters?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_262',
  'striver_a2z_sheet_id',
  'striver_sub_44',
  'Subarrays with K Different Integers',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/subarray-with-k-different-integers',
  'https://youtu.be/7wYGbV_LsX4?si=KWa48RgLDCvdNqRb',
  'https://leetcode.com/problems/subarrays-with-k-different-integers/',
  '/plus/dsa/problems/subarrays-with-k-different-integers',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_263',
  'striver_a2z_sheet_id',
  'striver_sub_44',
  'Minimum Window Substring ',
  3,
  'HARD'::"Difficulty",
  NULL,
  'https://youtu.be/WJaij9ffOIY?si=-xnsWIH84zWU0ICd',
  'https://leetcode.com/problems/minimum-window-substring/',
  '/plus/dsa/problems/minimum-window-substring-',
  '/plus/dsa/problems/minimum-window-substring-?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_264',
  'striver_a2z_sheet_id',
  'striver_sub_44',
  'Minimum Window Subsequence',
  4,
  'HARD'::"Difficulty",
  NULL,
  NULL,
  'https://leetcode.com/problems/minimum-window-subsequence/',
  '/plus/dsa/problems/minimum-window-subsequence',
  '/plus/dsa/problems/minimum-window-subsequence?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_265',
  'striver_a2z_sheet_id',
  'striver_sub_46',
  'Heaps (Theory Video)',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/introduction-to-priority-queues-using-binary-heaps',
  NULL,
  'https://www.geeksforgeeks.org/heap-data-structure/',
  '/plus/dsa/problems/heaps-theory',
  '/plus/dsa/problems/heaps-theory',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_266',
  'striver_a2z_sheet_id',
  'striver_sub_46',
  'Implement Min Heap',
  2,
  'MEDIUM'::"Difficulty",
  NULL,
  NULL,
  'https://www.geeksforgeeks.org/implement-min-heap-using-stl/',
  '/plus/dsa/problems/implement-min-heap',
  '/plus/dsa/problems/implement-min-heap?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_267',
  'striver_a2z_sheet_id',
  'striver_sub_46',
  'Check if an array represents a min heap ',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-an-array-represents-a-min-heap',
  NULL,
  'https://www.geeksforgeeks.org/how-to-check-if-a-given-array-represents-a-binary-heap/',
  '/plus/dsa/problems/check-if-an-array-represents-a-min-heap-',
  '/plus/dsa/problems/check-if-an-array-represents-a-min-heap-?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_268',
  'striver_a2z_sheet_id',
  'striver_sub_46',
  'Convert Min Heap to Max Heap',
  4,
  'MEDIUM'::"Difficulty",
  NULL,
  NULL,
  'https://www.geeksforgeeks.org/convert-min-heap-to-max-heap/',
  '/plus/dsa/problems/convert-min-heap-to-max-heap',
  '/plus/dsa/problems/convert-min-heap-to-max-heap?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_269',
  'striver_a2z_sheet_id',
  'striver_sub_47',
  'K-th Largest element in an array',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/kth-largest-smallest-element-in-an-array/',
  NULL,
  'https://leetcode.com/problems/kth-largest-element-in-an-array?utm=codolio',
  '/plus/dsa/problems/k-th-largest-element-in-an-array',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_270',
  'striver_a2z_sheet_id',
  'striver_sub_47',
  'Kth smallest element in an array [use priority queue]',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/kth-largest-smallest-element-in-an-array/',
  NULL,
  'https://leetcode.com/problems/kth-largest-element-in-an-array/',
  '/plus/dsa/problems/kth-smallest-element-in-an-array',
  '/plus/dsa/problems/kth-smallest-element-in-an-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_271',
  'striver_a2z_sheet_id',
  'striver_sub_47',
  'Sort K sorted array',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/sort-k-sorted-array',
  NULL,
  'https://leetcode.com/problems/merge-k-sorted-lists?utm=codolio',
  NULL,
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_272',
  'striver_a2z_sheet_id',
  'striver_sub_47',
  'Merge K sorted Lists',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/merge-m-sorted-lists',
  NULL,
  'https://leetcode.com/problems/merge-k-sorted-lists/',
  '/plus/dsa/problems/merge-k-sorted-lists',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_273',
  'striver_a2z_sheet_id',
  'striver_sub_47',
  'Replace Elements by Their Rank',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/replace-elements-by-its-rank-in-the-array/',
  NULL,
  'https://leetcode.com/problems/rank-transform-of-an-array/',
  '/plus/dsa/problems/replace-elements-by-their-rank',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_274',
  'striver_a2z_sheet_id',
  'striver_sub_47',
  'Task Scheduler',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/task-scheduler',
  NULL,
  'https://leetcode.com/problems/task-scheduler/',
  '/plus/dsa/problems/task-scheduler',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_275',
  'striver_a2z_sheet_id',
  'striver_sub_47',
  'Hand of Straights',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/hands-of-straights',
  NULL,
  'https://leetcode.com/problems/hand-of-straights/',
  '/plus/dsa/problems/hand-of-straights',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_276',
  'striver_a2z_sheet_id',
  'striver_sub_48',
  'Design Twitter',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/design-twitter',
  NULL,
  'https://leetcode.com/problems/design-twitter/',
  '/plus/dsa/problems/design-twitter',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_277',
  'striver_a2z_sheet_id',
  'striver_sub_48',
  'Minimum Cost to Connect Sticks',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/minimum-cost-to-connect-sticks',
  NULL,
  'https://leetcode.com/problems/minimum-cost-to-connect-sticks/',
  '/plus/dsa/problems/minimum-cost-to-connect-sticks',
  '/plus/dsa/problems/minimum-cost-to-connect-sticks?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_278',
  'striver_a2z_sheet_id',
  'striver_sub_48',
  'Kth largest element in a stream of running integers',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/kth-largest-element-in-a-stream-of-running-integers',
  NULL,
  'https://leetcode.com/problems/kth-largest-element-in-a-stream/#:~:text=Implement%20KthLargest%20class%3A,largest%20element%20in%20the%20stream.',
  '/plus/dsa/problems/kth-largest-element-in-a-stream-of-running-integers',
  '/plus/dsa/problems/kth-largest-element-in-a-stream-of-running-integers?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_279',
  'striver_a2z_sheet_id',
  'striver_sub_48',
  'Maximum Sum Combination',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/maximum-sum-combination',
  NULL,
  'https://www.geeksforgeeks.org/k-maximum-sum-combinations-two-arrays/',
  '/plus/dsa/problems/maximum-sum-combination',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_280',
  'striver_a2z_sheet_id',
  'striver_sub_48',
  'Find Median from Data Stream',
  5,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/find-median-from-data-stream',
  NULL,
  'https://leetcode.com/problems/find-median-from-data-stream/',
  '/plus/dsa/problems/find-median-from-data-stream',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_281',
  'striver_a2z_sheet_id',
  'striver_sub_48',
  'Top K Frequent Elements',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/top-k-frequent-elements',
  NULL,
  'https://leetcode.com/problems/top-k-frequent-elements/',
  '/plus/dsa/problems/top-k-frequent-elements',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_282',
  'striver_a2z_sheet_id',
  'striver_sub_50',
  'Assign Cookies',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/assign-cookies',
  'https://youtu.be/DIX2p7vb9co?si=GofAIDimue-Av0Fi',
  'https://leetcode.com/problems/assign-cookies/',
  '/plus/dsa/problems/assign-cookies',
  '/plus/dsa/problems/assign-cookies?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_283',
  'striver_a2z_sheet_id',
  'striver_sub_50',
  'Fractional Knapsack',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/fractional-knapsack-problem-greedy-approach/',
  'https://youtu.be/1ibsQrnuEEg?si=8R2By3wpHo0zZVHE',
  'https://www.geeksforgeeks.org/fractional-knapsack-problem/',
  '/plus/dsa/problems/fractional-knapsack',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_284',
  'striver_a2z_sheet_id',
  'striver_sub_50',
  'Lemonade Change',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/Greedy/lemonade-change',
  'https://youtu.be/n_tmibEhO6Q?si=q1NW8MfPy0QU6fIl',
  'https://leetcode.com/problems/lemonade-change/',
  '/plus/dsa/problems/lemonade-change',
  '/plus/dsa/problems/lemonade-change?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_285',
  'striver_a2z_sheet_id',
  'striver_sub_50',
  'Valid Paranthesis Checker',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/valid-paranthesis-checker',
  'https://youtu.be/cHT6sG_hUZI?si=XRHeyh7jOaLaTy3g',
  'https://leetcode.com/problems/valid-parenthesis-string/',
  '/plus/dsa/problems/valid-paranthesis-checker',
  '/plus/dsa/problems/valid-paranthesis-checker?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_286',
  'striver_a2z_sheet_id',
  'striver_sub_51',
  'N meetings in one room',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/n-meetings-in-one-room/',
  'https://youtu.be/mKfhTotEguk?si=2RELeq18mpmIIN3Q',
  'https://www.geeksforgeeks.org/activity-selection-problem-greedy-algo-1/',
  '/plus/dsa/problems/n-meetings-in-one-room',
  '/plus/dsa/problems/n-meetings-in-one-room?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_287',
  'striver_a2z_sheet_id',
  'striver_sub_51',
  'Jump Game - I',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/Greedy/jump-game-i',
  'https://youtu.be/tZAa_jJ3SwQ?si=voKd7n9VTLDRRNzJ',
  'https://leetcode.com/problems/jump-game/',
  '/plus/dsa/problems/jump-game---i',
  '/plus/dsa/problems/jump-game---i?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_288',
  'striver_a2z_sheet_id',
  'striver_sub_51',
  'Jump Game II',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/jump-game-2',
  'https://youtu.be/7SBVnw7GSTk?si=9uUouBELh9K3m2jZ',
  'https://leetcode.com/problems/jump-game-ii/',
  '/plus/dsa/problems/jump-game-ii',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_289',
  'striver_a2z_sheet_id',
  'striver_sub_51',
  'Minimum number of platforms required for a railway',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/minimum-number-of-platforms-required-for-a-railway/',
  'https://youtu.be/AsGzwR_FWok?si=165acXU_dtqOHuo9',
  'https://www.geeksforgeeks.org/minimum-number-platforms-required-railwaybus-station/',
  '/plus/dsa/problems/minimum-number-of-platforms-required-for-a-railway',
  '/plus/dsa/problems/minimum-number-of-platforms-required-for-a-railway?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_290',
  'striver_a2z_sheet_id',
  'striver_sub_51',
  'Job sequencing Problem',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/job-sequencing-problem/',
  'https://youtu.be/QbwltemZbRg?si=wvcemJ5BLPlTRmkG',
  'https://www.geeksforgeeks.org/job-sequencing-problem/',
  '/plus/dsa/problems/job-sequencing-problem',
  '/plus/dsa/problems/job-sequencing-problem?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_291',
  'striver_a2z_sheet_id',
  'striver_sub_51',
  'Candy',
  6,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/candy',
  'https://youtu.be/IIqVFvKE6RY?si=EjmuXZJNLQLUkEd7',
  'https://leetcode.com/problems/candy/',
  '/plus/dsa/problems/candy',
  '/plus/dsa/problems/candy?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_292',
  'striver_a2z_sheet_id',
  'striver_sub_51',
  'Shortest Job First',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/Greedy/shortest-job-first-or-sjf-cpu-scheduling',
  'https://youtu.be/3-QbX1iDbXs?si=IH8QZUblr01F7UoQ',
  'https://www.geeksforgeeks.org/shortest-job-first-or-sjf-cpu-scheduling-set-1-non-preemptive/',
  '/plus/dsa/problems/shortest-job-first',
  '/plus/dsa/problems/shortest-job-first?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_293',
  'striver_a2z_sheet_id',
  'striver_sub_51',
  'Program for Least Recently Used (LRU) Page Replacement Algorithm',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/program-for-least-recently-used-lru-page-replacement-algorithm',
  NULL,
  'https://leetcode.com/problems/lru-cache/',
  '/plus/dsa/problems/lru-cache',
  '/plus/dsa/problems/lru-cache?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_294',
  'striver_a2z_sheet_id',
  'striver_sub_51',
  'Insert Interval',
  9,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/?s=Insert+Interval',
  'https://youtu.be/xxRE-46OCC8?si=a7aPuIw16zDx2lAa',
  'https://leetcode.com/problems/insert-interval/',
  '/plus/dsa/problems/insert-interval',
  '/plus/dsa/problems/insert-interval?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_295',
  'striver_a2z_sheet_id',
  'striver_sub_51',
  'Merge Intervals',
  10,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/merge-overlapping-sub-intervals/',
  'https://www.youtube.com/watch?v=2JzRBPFYbKE&list=PLgUwDviBIf0rPG3Ictpu74YWBQ1CaBkm2&index=6',
  'https://leetcode.com/problems/merge-intervals/',
  '/plus/dsa/problems/merge-intervals',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_296',
  'striver_a2z_sheet_id',
  'striver_sub_51',
  'Non-overlapping Intervals',
  11,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/non-overlapping-intervals',
  'https://youtu.be/HDHQ8lAWakY?si=JVtLqboGdpUTOVjf',
  'https://leetcode.com/problems/non-overlapping-intervals/',
  '/plus/dsa/problems/non-overlapping-intervals',
  '/plus/dsa/problems/non-overlapping-intervals?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_297',
  'striver_a2z_sheet_id',
  'striver_sub_53',
  'Introduction to Trees',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/binary-tree/introduction-to-trees/',
  'https://youtu.be/_ANrF3FJm7I',
  'https://www.geeksforgeeks.org/introduction-to-tree-data-structure/',
  '/plus/dsa/problems/introduction-',
  '/plus/dsa/problems/introduction-',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_298',
  'striver_a2z_sheet_id',
  'striver_sub_53',
  'Binary Tree Representation in Java',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/binary-tree/binary-tree-representation-in-java/',
  'https://youtu.be/hyLyW7rP24I',
  'https://www.geeksforgeeks.org/binary-tree-set-1-introduction/',
  '/plus/dsa/problems/introduction-',
  '/plus/dsa/problems/introduction-',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_299',
  'striver_a2z_sheet_id',
  'striver_sub_53',
  'Pre, Post, Inorder in one traversal',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/preorder-inorder-postorder-traversals-in-one-traversal/',
  'https://youtu.be/ySp2epYvgTE',
  'https://www.geeksforgeeks.org/tree-traversals-inorder-preorder-and-postorder/',
  '/plus/dsa/problems/pre,-post,-inorder-in-one-traversal',
  '/plus/dsa/problems/pre,-post,-inorder-in-one-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_300',
  'striver_a2z_sheet_id',
  'striver_sub_53',
  'Preorder Traversal',
  4,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/preorder-traversal-of-binary-tree/',
  'https://youtu.be/RlUu72JrOCQ',
  'https://leetcode.com/problems/binary-tree-preorder-traversal/',
  '/plus/dsa/problems/preorder-traversal',
  '/plus/dsa/problems/preorder-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_301',
  'striver_a2z_sheet_id',
  'striver_sub_53',
  'Inorder Traversal of Binary Tree',
  5,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/inorder-traversal-of-binary-tree/',
  'https://youtu.be/Z_NEgBgbRVI',
  'https://leetcode.com/problems/binary-tree-inorder-traversal/',
  '/plus/dsa/problems/inorder-traversal',
  '/plus/dsa/problems/inorder-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_302',
  'striver_a2z_sheet_id',
  'striver_sub_53',
  'Postorder Traversal',
  6,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/iterative-postorder-traversal-of-binary-tree-using-2-stack',
  'https://youtu.be/2YBhNLodD8Q',
  'https://leetcode.com/problems/binary-tree-postorder-traversal/',
  '/plus/dsa/problems/postorder-traversal',
  '/plus/dsa/problems/postorder-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_303',
  'striver_a2z_sheet_id',
  'striver_sub_53',
  'Level Order Traversal',
  7,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/level-order-traversal-of-a-binary-tree/',
  'https://youtu.be/EoAsWbO7sqg',
  'https://leetcode.com/problems/binary-tree-level-order-traversal/',
  '/plus/dsa/problems/level-order-traversal',
  '/plus/dsa/problems/level-order-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_304',
  'striver_a2z_sheet_id',
  'striver_sub_53',
  'Iterative Preorder Traversal of Binary Tree',
  8,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/iterative-preorder-traversal-of-binary-tree',
  'https://youtu.be/Bfqd8BsPVuw',
  'https://leetcode.com/problems/binary-tree-preorder-traversal/',
  '/plus/dsa/problems/preorder-traversal',
  '/plus/dsa/problems/preorder-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_305',
  'striver_a2z_sheet_id',
  'striver_sub_53',
  'Iterative Inorder Traversal of Binary Tree',
  9,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/inorder-traversal-of-binary-tree/',
  'https://youtu.be/lxTGsVXjwvM',
  'https://leetcode.com/problems/binary-tree-inorder-traversal/',
  '/plus/dsa/problems/inorder-traversal',
  '/plus/dsa/problems/inorder-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_306',
  'striver_a2z_sheet_id',
  'striver_sub_53',
  'Post-order Traversal of Binary Tree using 2 stack',
  10,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/iterative-postorder-traversal-of-binary-tree-using-2-stack',
  'https://youtu.be/2YBhNLodD8Q',
  'https://leetcode.com/problems/binary-tree-postorder-traversal/',
  '/plus/dsa/problems/postorder-traversal',
  '/plus/dsa/problems/postorder-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_307',
  'striver_a2z_sheet_id',
  'striver_sub_53',
  'Post-order Traversal of Binary Tree using 1 stack',
  11,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/post-order-traversal-of-binary-tree/',
  'https://youtu.be/NzIGLLwZBS8',
  'https://leetcode.com/problems/binary-tree-postorder-traversal/',
  '/plus/dsa/problems/postorder-traversal',
  '/plus/dsa/problems/postorder-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_308',
  'striver_a2z_sheet_id',
  'striver_sub_53',
  'Preorder, Inorder, and Postorder Traversal in one Traversal',
  12,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/preorder-inorder-postorder-traversals-in-one-traversal/',
  'https://youtu.be/ySp2epYvgTE',
  'https://www.geeksforgeeks.org/tree-traversals-inorder-preorder-and-postorder/',
  '/plus/dsa/problems/pre,-post,-inorder-in-one-traversal',
  '/plus/dsa/problems/pre,-post,-inorder-in-one-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_309',
  'striver_a2z_sheet_id',
  'striver_sub_54',
  'Maximum Depth in BT',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/maximum-depth-of-a-binary-tree/',
  'https://youtu.be/eD3tmO66aBA',
  'https://leetcode.com/problems/maximum-depth-of-binary-tree/',
  '/plus/dsa/problems/maximum-depth-in-bt',
  '/plus/dsa/problems/maximum-depth-in-bt?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_310',
  'striver_a2z_sheet_id',
  'striver_sub_54',
  'Check for balanced binary tree',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-the-binary-tree-is-balanced-binary-tree/',
  'https://youtu.be/Yt50Jfbd8Po',
  'https://leetcode.com/problems/balanced-binary-tree/',
  '/plus/dsa/problems/check-for-balanced-binary-tree',
  '/plus/dsa/problems/check-for-balanced-binary-tree?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_311',
  'striver_a2z_sheet_id',
  'striver_sub_54',
  'Diameter of Binary Tree',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/calculate-the-diameter-of-a-binary-tree/',
  'https://youtu.be/Rezetez59Nk',
  'https://leetcode.com/problems/diameter-of-binary-tree/',
  '/plus/dsa/problems/diameter-of-binary-tree',
  '/plus/dsa/problems/diameter-of-binary-tree?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_312',
  'striver_a2z_sheet_id',
  'striver_sub_54',
  'Maximum path sum ',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/maximum-sum-path-in-binary-tree/',
  'https://youtu.be/WszrfSwMz58',
  'https://leetcode.com/problems/binary-tree-maximum-path-sum/',
  '/plus/dsa/problems/maximum-path-sum-',
  '/plus/dsa/problems/maximum-path-sum-?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_313',
  'striver_a2z_sheet_id',
  'striver_sub_54',
  'Check if two trees are identical or not',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/check-if-two-trees-are-identical/',
  'https://youtu.be/BhuvF_-PWS0',
  'https://leetcode.com/problems/same-tree/',
  '/plus/dsa/problems/check-if-two-trees-are-identical-or-not',
  '/plus/dsa/problems/check-if-two-trees-are-identical-or-not?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_314',
  'striver_a2z_sheet_id',
  'striver_sub_54',
  'Zig Zag or Spiral Traversal',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/zig-zag-traversal-of-binary-tree/',
  'https://youtu.be/3OXWEdlIGl4',
  'https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/',
  '/plus/dsa/problems/zig-zag-or-spiral-traversal',
  '/plus/dsa/problems/zig-zag-or-spiral-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_315',
  'striver_a2z_sheet_id',
  'striver_sub_54',
  'Boundary Traversal',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/boundary-traversal-of-a-binary-tree/',
  'https://youtu.be/0ca1nvR0be4',
  'https://leetcode.com/problems/boundary-of-binary-tree/',
  '/plus/dsa/problems/boundary-traversal',
  '/plus/dsa/problems/boundary-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_316',
  'striver_a2z_sheet_id',
  'striver_sub_54',
  'Vertical Order Traversal',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/vertical-order-traversal-of-binary-tree/',
  'https://youtu.be/q_a6lpbKJdw',
  'https://leetcode.com/problems/vertical-order-traversal-of-a-binary-tree/',
  '/plus/dsa/problems/vertical-order-traversal',
  '/plus/dsa/problems/vertical-order-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_317',
  'striver_a2z_sheet_id',
  'striver_sub_54',
  'Top View of BT',
  9,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/top-view-of-a-binary-tree/',
  'https://youtu.be/Et9OCDNvJ78',
  'https://www.geeksforgeeks.org/print-nodes-top-view-binary-tree/',
  '/plus/dsa/problems/top-view-of-bt',
  '/plus/dsa/problems/top-view-of-bt?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_318',
  'striver_a2z_sheet_id',
  'striver_sub_54',
  'Bottom view of BT',
  10,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/bottom-view-of-a-binary-tree/',
  'https://youtu.be/0FtVY6I4pB8',
  'https://www.geeksforgeeks.org/bottom-view-binary-tree/',
  '/plus/dsa/problems/bottom-view-of-bt',
  '/plus/dsa/problems/bottom-view-of-bt?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_319',
  'striver_a2z_sheet_id',
  'striver_sub_54',
  'Right/Left View of Binary Tree',
  11,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/right-left-view-of-binary-tree/',
  'https://youtu.be/KV4mRzTjlAk',
  'https://leetcode.com/problems/binary-tree-right-side-view/',
  '/plus/dsa/problems/right-left-view-of-bt',
  '/plus/dsa/problems/right-left-view-of-bt?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_320',
  'striver_a2z_sheet_id',
  'striver_sub_54',
  'Symmetric Binary Tree',
  12,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/check-for-symmetrical-binary-tree/',
  'https://youtu.be/nKggiEpBE',
  'https://leetcode.com/problems/symmetric-tree/',
  '/plus/dsa/problems/check-for-symmetrical-bts',
  '/plus/dsa/problems/check-for-symmetrical-bts?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_321',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Print root to leaf path in BT',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/print-root-to-node-path-in-a-binary-tree/',
  'https://youtu.be/fmflMqVOC7k',
  'https://www.geeksforgeeks.org/given-a-binary-tree-print-all-root-to-leaf-paths/',
  '/plus/dsa/problems/print-root-to-note-path-in-bt',
  '/plus/dsa/problems/print-root-to-note-path-in-bt?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_322',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'LCA in BT',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/lowest-common-ancestor-for-two-given-nodes/',
  'https://youtu.be/_-QHfMDde90',
  'https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/',
  '/plus/dsa/problems/lca-in-bt',
  '/plus/dsa/problems/lca-in-bt?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_323',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Maximum Width of BT',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/maximum-width-of-a-binary-tree/',
  'https://youtu.be/ZbybYvcVLks',
  'https://leetcode.com/problems/maximum-width-of-binary-tree/',
  '/plus/dsa/problems/maximum-width-of-bt',
  '/plus/dsa/problems/maximum-width-of-bt?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_324',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Children Sum Property in Binary Tree',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/check-for-children-sum-property-in-a-binary-tree/',
  'https://youtu.be/fnmisPM6cVo',
  'https://www.geeksforgeeks.org/check-for-children-sum-property-in-a-binary-tree/',
  '/plus/dsa/problems/children-sum-property-in-binary-tree',
  '/plus/dsa/problems/children-sum-property-in-binary-tree?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_325',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Print all nodes at a distance of K in BT',
  5,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/print-all-the-nodes-at-a-distance-of-k-in-a-binary-tree',
  'https://youtu.be/i9ORlEy6EsI',
  'https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree/',
  '/plus/dsa/problems/print-all-nodes-at-a-distance-of-k-in-bt',
  '/plus/dsa/problems/print-all-nodes-at-a-distance-of-k-in-bt?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_326',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Minimum time taken to burn the BT from a given Node',
  6,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/minimum-time-taken-to-burn-the-binary-tree-from-a-node',
  'https://youtu.be/2r5wLmQfD6g',
  'https://www.geeksforgeeks.org/time-to-burn-all-nodes-of-a-binary-tree/',
  '/plus/dsa/problems/minimum-time-taken-to-burn-the-bt-from-a-given-node',
  '/plus/dsa/problems/minimum-time-taken-to-burn-the-bt-from-a-given-node?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_327',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Count total nodes in a complete BT',
  7,
  'EASY'::"Difficulty",
  'https://takeuforward.org/binary-tree/count-number-of-nodes-in-a-binary-tree/',
  'https://youtu.be/u-yWemKGWO0',
  'https://leetcode.com/problems/count-complete-tree-nodes/',
  '/plus/dsa/problems/count-total-nodes-in-a-complete-bt',
  '/plus/dsa/problems/count-total-nodes-in-a-complete-bt?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_328',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Requirements needed to construct a unique BT',
  8,
  'MEDIUM'::"Difficulty",
  NULL,
  'https://youtu.be/9GMECGQgWrQ',
  'https://www.geeksforgeeks.org/if-you-are-given-two-traversal-sequences-can-you-construct-the-binary-tree/',
  '/plus/dsa/problems/requirements-needed-to-construct-a-unique-bt',
  '/plus/dsa/problems/requirements-needed-to-construct-a-unique-bt?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_329',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Construct a BT from Preorder and Inorder',
  9,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/construct-a-binary-tree-from-inorder-and-preorder-traversal/',
  'https://youtu.be/aZNaLrVebKQ',
  'https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/',
  '/plus/dsa/problems/construct-a-bt-from-preorder-and-inorder',
  '/plus/dsa/problems/construct-a-bt-from-preorder-and-inorder?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_330',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Construct the Binary Tree from Postorder and Inorder Traversal',
  10,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/construct-binary-tree-from-inorder-and-postorder-traversal/',
  'https://youtu.be/LgLRTaEMRVc',
  'https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/',
  '/plus/dsa/problems/construct-a-bt-from-postorder-and-inorder',
  '/plus/dsa/problems/construct-a-bt-from-postorder-and-inorder?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_331',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Serialize and De-serialize BT',
  11,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/serialize-and-deserialize-a-binary-tree/',
  'https://youtu.be/-YbXySKJsX8',
  'https://leetcode.com/problems/serialize-and-deserialize-binary-tree/',
  '/plus/dsa/problems/serialize-and-de-serialize-bt',
  '/plus/dsa/problems/serialize-and-de-serialize-bt?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_332',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Morris Preorder Traversal of a Binary Tree',
  12,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/morris-preorder-traversal-of-a-binary-tree/',
  'https://youtu.be/80Zug6D1_r4',
  'https://leetcode.com/problems/binary-tree-inorder-traversal/',
  '/plus/dsa/problems/morris-preorder-traversal-',
  '/plus/dsa/problems/morris-preorder-traversal-?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_333',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Morris Inorder Traversal of a Binary Tree',
  13,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/morris-inorder-traversal-of-a-binary-tree/',
  'https://youtu.be/80Zug6D1_r4',
  'https://leetcode.com/problems/binary-tree-inorder-traversal/',
  '/plus/dsa/problems/morris-inorder-traversal-',
  '/plus/dsa/problems/morris-inorder-traversal-?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_334',
  'striver_a2z_sheet_id',
  'striver_sub_55',
  'Flatten Binary Tree to Linked List',
  14,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/flatten-binary-tree-to-linked-list/',
  'https://youtu.be/sWf7k1x9XR4',
  'https://leetcode.com/problems/flatten-binary-tree-to-linked-list/',
  '/plus/dsa/problems/flatten-binary-tree-to-linked-list',
  '/plus/dsa/problems/flatten-binary-tree-to-linked-list?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_335',
  'striver_a2z_sheet_id',
  'striver_sub_57',
  'Introduction to BST',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/binary-search-tree/introduction-to-binary-search-trees/',
  'https://youtu.be/p7-9UvDQZ3w',
  'https://www.geeksforgeeks.org/binary-search-tree-data-structure/',
  '/plus/dsa/problems/introduction-to-bst',
  '/plus/dsa/problems/introduction-to-bst',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_336',
  'striver_a2z_sheet_id',
  'striver_sub_57',
  'Search in a Binary Search Tree',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/search-in-a-binary-search-tree-2/',
  'https://youtu.be/KcNt6v_56cc',
  'https://leetcode.com/problems/search-in-a-binary-search-tree/',
  '/plus/dsa/problems/search-in-bst',
  '/plus/dsa/problems/search-in-bst?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_337',
  'striver_a2z_sheet_id',
  'striver_sub_57',
  'Find Min/Max in BST',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/find-minmax-in-a-bst',
  NULL,
  'https://www.geeksforgeeks.org/find-the-minimum-element-in-a-binary-search-tree/',
  NULL,
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_338',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'Floor and Ceil in a BST',
  1,
  'EASY'::"Difficulty",
  NULL,
  'https://www.youtube.com/watch?v=xm_W1ub-K-w&list=PLgUwDviBIf0q8Hkd7bK2Bpryj2xVJk8Vk&index=43',
  'https://www.geeksforgeeks.org/floor-and-ceil-from-a-bst/',
  '/plus/dsa/problems/floor-and-ceil-in-a-bst',
  '/plus/dsa/problems/floor-and-ceil-in-a-bst?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_339',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'Floor in a Binary Search Tree',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/binary-search-tree/floor-in-a-binary-search-tree/',
  'https://youtu.be/xm_W1ub-K-w',
  'https://www.geeksforgeeks.org/floor-in-binary-search-tree-bst/',
  '/plus/dsa/problems/floor-and-ceil-in-a-bst',
  '/plus/dsa/problems/floor-and-ceil-in-a-bst?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_340',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'Insert a given node in BST',
  3,
  'MEDIUM'::"Difficulty",
  NULL,
  'https://youtu.be/FiFiNvM29ps',
  'https://leetcode.com/problems/insert-into-a-binary-search-tree/',
  '/plus/dsa/problems/insert-a-given-node-in-bst',
  '/plus/dsa/problems/insert-a-given-node-in-bst?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_341',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'Delete a node in BST',
  4,
  'MEDIUM'::"Difficulty",
  NULL,
  'https://youtu.be/kouxiP_H5WE',
  'https://leetcode.com/problems/delete-node-in-a-bst/',
  '/plus/dsa/problems/delete-a-node-in-bst',
  '/plus/dsa/problems/delete-a-node-in-bst?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_342',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'Kth Smallest and Largest element in BST',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/kth-largest-smallest-element-in-binary-search-tree/',
  'https://youtu.be/9TJYWh0adfk',
  'https://leetcode.com/problems/kth-smallest-element-in-a-bst/',
  '/plus/dsa/problems/kth-smallest-and-largest-element-in-bst',
  '/plus/dsa/problems/kth-smallest-and-largest-element-in-bst?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_343',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'Check if a tree is a BST or not',
  6,
  'MEDIUM'::"Difficulty",
  NULL,
  'https://youtu.be/f-sj7I5oXEI',
  'https://leetcode.com/problems/validate-binary-search-tree/',
  '/plus/dsa/problems/check-if-a-tree-is-a-bst-or-not',
  '/plus/dsa/problems/check-if-a-tree-is-a-bst-or-not?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_344',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'LCA in BST',
  7,
  'MEDIUM'::"Difficulty",
  NULL,
  'https://youtu.be/cX_kPV_foZc',
  'https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/',
  '/plus/dsa/problems/lca-in-bst',
  '/plus/dsa/problems/lca-in-bst?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_345',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'Construct a BST from a preorder traversal',
  8,
  'MEDIUM'::"Difficulty",
  NULL,
  'https://youtu.be/UmJT3j26t1I',
  'https://leetcode.com/problems/construct-binary-search-tree-from-preorder-traversal/',
  '/plus/dsa/problems/construct-a-bst-from-a-preorder-traversal',
  '/plus/dsa/problems/construct-a-bst-from-a-preorder-traversal?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_346',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'Inorder Successor/Predecessor in BST',
  9,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/inorder-successorpredecessor-in-bst',
  'https://youtu.be/SXKAD2svfmI',
  'https://leetcode.com/problems/inorder-successor-in-bst/',
  '/plus/dsa/problems/inorder-successor-and-predecessor-in-bst',
  '/plus/dsa/problems/inorder-successor-and-predecessor-in-bst?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_347',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'Merge 2 BST''s',
  10,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/bst-iterator',
  'https://youtu.be/D2jMcmxU4bs',
  'https://leetcode.com/problems/binary-search-tree-iterator/',
  '/plus/dsa/problems/bst-iterator',
  '/plus/dsa/problems/bst-iterator?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_348',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'Two Sum In BST | Check if there exists a pair with Sum K',
  11,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/two-sum-in-bst-check-if-there-exists-a-pair-with-sum-k',
  'https://youtu.be/ssL3sHwPeb4',
  'https://leetcode.com/problems/two-sum-iv-input-is-a-bst/',
  '/plus/dsa/problems/two-sum-in-bst',
  '/plus/dsa/problems/two-sum-in-bst?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_349',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'Correct BST with two nodes swapped',
  12,
  'HARD'::"Difficulty",
  NULL,
  'https://youtu.be/ZWGW7FminDM',
  'https://leetcode.com/problems/recover-binary-search-tree/',
  '/plus/dsa/problems/correct-bst-with-two-nodes-swapped',
  '/plus/dsa/problems/correct-bst-with-two-nodes-swapped?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_350',
  'striver_a2z_sheet_id',
  'striver_sub_58',
  'Largest BST in Binary Tree',
  13,
  'HARD'::"Difficulty",
  NULL,
  'https://youtu.be/X0oXMdtUDwo',
  'https://leetcode.com/problems/maximum-sum-bst-in-binary-tree/',
  '/plus/dsa/problems/largest-bst-in-binary-tree',
  '/plus/dsa/problems/largest-bst-in-binary-tree?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_351',
  'striver_a2z_sheet_id',
  'striver_sub_60',
  'Introduction to Graph',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/graph-representation-in-java',
  'https://youtu.be/3oI-34aPMWM',
  'https://www.geeksforgeeks.org/graph-and-its-representations/',
  '/plus/dsa/problems/introduction-to-graph',
  '/plus/dsa/problems/introduction-to-graph?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_352',
  'striver_a2z_sheet_id',
  'striver_sub_60',
  'Graph Representation | C++',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/graph/graph-representation-in-c/',
  'https://youtu.be/3oI-34aPMWM',
  'https://www.geeksforgeeks.org/graph-and-its-representations/',
  '/plus/dsa/problems/introduction-to-graph',
  '/plus/dsa/problems/introduction-to-graph?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_353',
  'striver_a2z_sheet_id',
  'striver_sub_60',
  'Graph Representation | Java',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/graph-representation-in-java',
  'https://youtu.be/3oI-34aPMWM',
  'https://www.geeksforgeeks.org/graph-and-its-representations/',
  '/plus/dsa/problems/introduction-to-graph',
  '/plus/dsa/problems/introduction-to-graph?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_354',
  'striver_a2z_sheet_id',
  'striver_sub_60',
  'Connected Components',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/connected-components',
  NULL,
  'https://leetcode.com/problems/number-of-connected-components-in-an-undirected-graph?utm=codolio',
  '/plus/dsa/problems/connected-components',
  '/plus/dsa/problems/connected-components?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_355',
  'striver_a2z_sheet_id',
  'striver_sub_60',
  'Traversal Techniques',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/depth-first-search-dfs/',
  'https://youtu.be/Qzf1a--rhp8',
  'https://www.geeksforgeeks.org/bfs-vs-dfs-binary-tree/',
  '/plus/dsa/problems/traversal-techniques',
  '/plus/dsa/problems/traversal-techniques?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_356',
  'striver_a2z_sheet_id',
  'striver_sub_60',
  'DFS',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/depth-first-search-dfs/',
  'https://youtu.be/Qzf1a--rhp8',
  'https://leetcode.com/problems/surrounded-regions?utm=codolio',
  '/plus/dsa/problems/traversal-techniques',
  '/plus/dsa/problems/traversal-techniques?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_357',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Number of provinces',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/number-of-provinces/',
  'https://youtu.be/ACzkVtewUYA',
  'https://leetcode.com/problems/number-of-provinces/#:~:text=A%20province%20is%20a%20group,the%20total%20number%20of%20provinces.',
  '/plus/dsa/problems/number-of-provinces',
  '/plus/dsa/problems/number-of-provinces?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_358',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Connected Components Problem in Matrix',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/connected-components',
  NULL,
  'https://leetcode.com/problems/number-of-islands/',
  '/plus/dsa/problems/connected-components',
  '/plus/dsa/problems/connected-components?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_359',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Rotten Oranges',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/rotten-oranges-min-time-to-rot-all-oranges-bfs/',
  'https://www.youtube.com/watch?v=yf3oUhkvqA0',
  'https://leetcode.com/problems/rotting-oranges/',
  '/plus/dsa/problems/rotten-oranges',
  '/plus/dsa/problems/rotten-oranges?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_360',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Flood fill algorithm',
  4,
  'MEDIUM'::"Difficulty",
  NULL,
  NULL,
  'https://leetcode.com/problems/flood-fill/',
  '/plus/dsa/problems/flood-fill-algorithm',
  '/plus/dsa/problems/flood-fill-algorithm?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_361',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Cycle Detection in Undirected Graph (bfs)',
  5,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/detect-cycle-in-an-undirected-graph-using-bfs/',
  'https://youtu.be/BPlrALf1LDU',
  'https://www.geeksforgeeks.org/detect-cycle-undirected-graph/',
  '/plus/dsa/problems/detect-a-cycle-in-an-undirected-graph',
  '/plus/dsa/problems/detect-a-cycle-in-an-undirected-graph?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_362',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Detect a cycle in an undirected graph',
  6,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/detect-cycle-in-an-undirected-graph-using-dfs/',
  'https://youtu.be/zQ3zgFypzX4',
  'https://leetcode.com/problems/course-schedule/',
  '/plus/dsa/problems/detect-a-cycle-in-an-undirected-graph',
  '/plus/dsa/problems/detect-a-cycle-in-an-undirected-graph?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_363',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Distance of nearest cell having one',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/graph/distance-of-nearest-cell-having-1/',
  'https://youtu.be/edXdVwkYHF8',
  'https://leetcode.com/problems/01-matrix/',
  '/plus/dsa/problems/distance-of-nearest-cell-having-one',
  '/plus/dsa/problems/distance-of-nearest-cell-having-one?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_364',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Surrounded Regions',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/graph/surrounded-regions-replace-os-with-xs/',
  'https://youtu.be/BtdgAys4yMk',
  'https://leetcode.com/problems/surrounded-regions?utm=codolio',
  '/plus/dsa/problems/surrounded-regions',
  '/plus/dsa/problems/surrounded-regions?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_365',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Number of enclaves',
  9,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/graph/number-of-enclaves/',
  'https://youtu.be/rxKcepXQgU4',
  'https://leetcode.com/problems/number-of-enclaves/',
  '/plus/dsa/problems/number-of-enclaves',
  '/plus/dsa/problems/number-of-enclaves?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_366',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Word ladder I',
  10,
  'HARD'::"Difficulty",
  'https://takeuforward.org/graph/word-ladder-i-g-29/',
  'https://youtu.be/tRPda0rcf8E',
  'https://leetcode.com/problems/word-ladder/',
  '/plus/dsa/problems/word-ladder-i',
  '/plus/dsa/problems/word-ladder-i?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_367',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Word ladder II',
  11,
  'HARD'::"Difficulty",
  'https://takeuforward.org/graph/g-30-word-ladder-ii/',
  'https://youtu.be/AD4SFl7tu7I?si=EpcJQTWm2YeURvEG',
  'https://leetcode.com/problems/word-ladder-ii/',
  '/plus/dsa/problems/word-ladder-ii',
  '/plus/dsa/problems/word-ladder-ii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_368',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Number of islands',
  12,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/number-of-distinct-islands/',
  'https://www.youtube.com/watch?v=muncqlKJrH0&list=PLgUwDviBIf0oE3gA41TKO2H5bHpPd7fzn&index=8',
  'https://leetcode.com/problems/number-of-islands/',
  '/plus/dsa/problems/number-of-islands',
  '/plus/dsa/problems/number-of-islands?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_369',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Bipartite Graph (DFS)',
  13,
  'HARD'::"Difficulty",
  'https://takeuforward.org/graph/bipartite-graph-dfs-implementation/',
  'https://youtu.be/KG5YFfR0j8A',
  'https://leetcode.com/problems/is-graph-bipartite/',
  '/plus/dsa/problems/bipartite-graph',
  '/plus/dsa/problems/bipartite-graph?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_370',
  'striver_a2z_sheet_id',
  'striver_sub_61',
  'Cycle Detection in Directed Graph (DFS)',
  14,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/detect-cycle-in-a-directed-graph-using-dfs-g-19/',
  'https://youtu.be/9twcmtQj4DU',
  'https://leetcode.com/problems/course-schedule-ii/discuss/293048/detecting-cycle-in-directed-graph-problem',
  '/plus/dsa/problems/detect-a-cycle-in-a-directed-graph',
  '/plus/dsa/problems/detect-a-cycle-in-a-directed-graph?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_371',
  'striver_a2z_sheet_id',
  'striver_sub_62',
  'Topo Sort',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/topological-sort-algorithm-dfs-g-21/',
  'https://youtu.be/5lZ0iJMrUMk',
  'https://www.geeksforgeeks.org/topological-sorting/',
  '/plus/dsa/problems/topological-sort-or-kahns-algorithm',
  '/plus/dsa/problems/topological-sort-or-kahns-algorithm?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_372',
  'striver_a2z_sheet_id',
  'striver_sub_62',
  'Topological sort or Kahn''s algorithm',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/topological-sort-algorithm-dfs-g-21/',
  'https://youtu.be/5lZ0iJMrUMk',
  'https://www.geeksforgeeks.org/topological-sorting-indegree-based-solution/',
  '/plus/dsa/problems/topological-sort-or-kahns-algorithm',
  '/plus/dsa/problems/topological-sort-or-kahns-algorithm?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_373',
  'striver_a2z_sheet_id',
  'striver_sub_62',
  'Detect a cycle in a directed graph',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/detect-a-cycle-in-directed-graph-topological-sort-kahns-algorithm-g-23/',
  'https://www.youtube.com/watch?v=uzVUw90ZFIg&list=PLgUwDviBIf0rGEWe64KWas0Nryn7SCRWw&index=12',
  'https://leetcode.com/problems/course-schedule/',
  '/plus/dsa/problems/detect-a-cycle-in-a-directed-graph',
  '/plus/dsa/problems/detect-a-cycle-in-a-directed-graph?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_374',
  'striver_a2z_sheet_id',
  'striver_sub_62',
  'Course Schedule I',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/course-schedule-i-and-ii-pre-requisite-tasks-topological-sort-g-24/',
  'https://youtu.be/WAOfKpxYHR8',
  'https://leetcode.com/problems/course-schedule/',
  '/plus/dsa/problems/course-schedule-i',
  '/plus/dsa/problems/course-schedule-i?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_375',
  'striver_a2z_sheet_id',
  'striver_sub_62',
  'Course Schedule II',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/course-schedule-i-and-ii-pre-requisite-tasks-topological-sort-g-24/',
  'https://youtu.be/WAOfKpxYHR8',
  'https://leetcode.com/problems/course-schedule-ii/',
  '/plus/dsa/problems/course-schedule-ii',
  '/plus/dsa/problems/course-schedule-ii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_376',
  'striver_a2z_sheet_id',
  'striver_sub_62',
  'Find eventual safe states',
  6,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/find-eventual-safe-states-bfs-topological-sort-g-25/',
  'https://youtu.be/2gtg3VsDGyc',
  'https://leetcode.com/problems/find-eventual-safe-states/',
  '/plus/dsa/problems/find-eventual-safe-states',
  '/plus/dsa/problems/find-eventual-safe-states?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_377',
  'striver_a2z_sheet_id',
  'striver_sub_62',
  'Alien Dictionary',
  7,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/alien-dictionary-topological-sort-g-26/',
  'https://youtu.be/U3N_je7tWAs',
  'https://leetcode.com/problems/alien-dictionary/solution/',
  '/plus/dsa/problems/alient-dictionary',
  '/plus/dsa/problems/alient-dictionary?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_378',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Shortest path in undirected graph with unit weights',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/shortest-path-in-undirected-graph-with-unit-distance-g-28/',
  'https://www.youtube.com/watch?v=C4gxoTaI71U&list=PLgUwDviBIf0oE3gA41TKO2H5bHpPd7fzn&index=28',
  'https://www.geeksforgeeks.org/shortest-path-unweighted-graph/',
  '/plus/dsa/problems/shortest-path-in-undirected-graph-with-unit-weights',
  '/plus/dsa/problems/shortest-path-in-undirected-graph-with-unit-weights?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_379',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Shortest path in DAG',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/shortest-path-in-directed-acyclic-graph-topological-sort-g-27/',
  'https://www.youtube.com/watch?v=ZUFQfFaU-8U&list=PLgUwDviBIf0oE3gA41TKO2H5bHpPd7fzn&index=27',
  'https://www.geeksforgeeks.org/shortest-path-for-directed-acyclic-graphs/',
  '/plus/dsa/problems/shortest-path-in-dag',
  '/plus/dsa/problems/shortest-path-in-dag?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_380',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Djisktra''s Algorithm',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/dijkstras-algorithm-using-set-g-33/',
  'https://www.youtube.com/watch?v=rp1SMw7HSO8&list=PLgUwDviBIf0oE3gA41TKO2H5bHpPd7fzn&index=35',
  'https://www.geeksforgeeks.org/dijkstras-shortest-path-algorithm-greedy-algo-7/',
  '/plus/dsa/problems/dijkstra''s-algorithm',
  '/plus/dsa/problems/dijkstra''s-algorithm?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_381',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Why priority Queue is used in Djisktra''s Algorithm',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/dijkstras-algorithm-using-priority-queue-g-32/',
  'https://www.youtube.com/watch?v=rp1SMw7HSO8&list=PLgUwDviBIf0oE3gA41TKO2H5bHpPd7fzn&index=35',
  'https://www.geeksforgeeks.org/dijkstras-algorithm-for-adjacency-list-representation-greedy-algo-8/',
  '/plus/dsa/problems/dijkstra''s-algorithm',
  '/plus/dsa/problems/dijkstra''s-algorithm?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_382',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Shortest Distance in a Binary Maze',
  5,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/g-36-shortest-distance-in-a-binary-maze/',
  'https://www.youtube.com/watch?v=U5Mw4eyUmw4&list=PLgUwDviBIf0oE3gA41TKO2H5bHpPd7fzn&index=36',
  'https://leetcode.com/problems/shortest-path-in-binary-mat',
  '/plus/dsa/problems/shortest-path-with-minimum-effort',
  '/plus/dsa/problems/shortest-path-with-minimum-effort?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_383',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Path with minimum effort',
  6,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/g-37-path-with-minimum-effort/',
  'https://youtu.be/0ytpZyiZFhA',
  'https://leetcode.com/problems/path-with-minimum-effort/',
  '/plus/dsa/problems/path-with-minimum-effort',
  '/plus/dsa/problems/path-with-minimum-effort?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_384',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Cheapest flight within K stops',
  7,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/g-38-cheapest-flights-within-k-stops/',
  'https://youtu.be/9XybHVqTHcQ',
  'https://leetcode.com/problems/cheapest-flights-within-k-stops/',
  '/plus/dsa/problems/cheapest-flight-within-k-stops',
  '/plus/dsa/problems/cheapest-flight-within-k-stops?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_385',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Network Delay Time',
  8,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/network-delay-time',
  NULL,
  'https://leetcode.com/problems/network-delay-time/',
  '/plus/dsa/problems/network-delay-time',
  '/plus/dsa/problems/network-delay-time?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_386',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Number of ways to arrive at destination',
  9,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/g-40-number-of-ways-to-arrive-at-destination/',
  'https://youtu.be/_-0mx0SmYxA',
  'https://leetcode.com/problems/number-of-ways-to-arrive-at-destination/',
  '/plus/dsa/problems/number-of-ways-to-arrive-at-destination',
  '/plus/dsa/problems/number-of-ways-to-arrive-at-destination?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_387',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Minimum multiplications to reach end',
  10,
  'HARD'::"Difficulty",
  'https://takeuforward.org/graph/g-39-minimum-multiplications-to-reach-end/',
  'https://www.youtube.com/watch?v=_BvEJ3VIDWw&list=PLgUwDviBIf0oE3gA41TKO2H5bHpPd7fzn&index=39',
  'https://www.geeksforgeeks.org/minimum-number-of-multiply-operations-to-make-a-number-divisible-by-n/',
  '/plus/dsa/problems/minimum-multiplications-to-reach-end',
  '/plus/dsa/problems/minimum-multiplications-to-reach-end?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_388',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Bellman Ford Algorithm',
  11,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/bellman-ford-algorithm-g-41/',
  'https://youtu.be/0vVofAhAYjc',
  'https://www.geeksforgeeks.org/bellman-ford-algorithm-dp-23/',
  '/plus/dsa/problems/bellman-ford-algorithm',
  '/plus/dsa/problems/bellman-ford-algorithm?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_389',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Floyd warshall algorithm',
  12,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/floyd-warshall-algorithm-g-42/',
  'https://www.youtube.com/watch?v=YbY8cVwWAvw&list=PLgUwDviBIf0oE3gA41TKO2H5bHpPd7fzn&index=42',
  'https://www.geeksforgeeks.org/floyd-warshall-algorithm-dp-16/',
  '/plus/dsa/problems/floyd-warshall-algorithm',
  '/plus/dsa/problems/floyd-warshall-algorithm?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_390',
  'striver_a2z_sheet_id',
  'striver_sub_63',
  'Find the city with the smallest number of neighbors',
  13,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/find-the-city-with-the-smallest-number-of-neighbours-at-a-threshold-distance-g-43/',
  'https://youtu.be/9XybHVqTHcQ',
  'https://leetcode.com/problems/find-the-city-with-the-smallest-number-of-neighbors-at-a-threshold-distance/',
  '/plus/dsa/problems/find-the-city-with-the-smallest-number-of-neighbors',
  '/plus/dsa/problems/find-the-city-with-the-smallest-number-of-neighbors?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_391',
  'striver_a2z_sheet_id',
  'striver_sub_64',
  'MST theory',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/minimum-spanning-tree-theory-g-44/',
  'https://youtu.be/ZSPjZuZWCME',
  'https://www.geeksforgeeks.org/kruskals-minimum-spanning-tree-algorithm-greedy-algo-2/',
  '/plus/dsa/problems/mst-theory',
  '/plus/dsa/problems/mst-theory?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_392',
  'striver_a2z_sheet_id',
  'striver_sub_64',
  'Prim''s Algorithm',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/prims-algorithm-minimum-spanning-tree-c-and-java-g-45/',
  'https://youtu.be/mJcZjjKzeqk',
  'https://www.geeksforgeeks.org/prims-minimum-spanning-tree-mst-greedy-algo-5/',
  '/plus/dsa/problems/find-the-mst-weight',
  '/plus/dsa/problems/find-the-mst-weight?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_393',
  'striver_a2z_sheet_id',
  'striver_sub_64',
  'Disjoint Set ',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/disjoint-set-union-by-rank-union-by-size-path-compression-g-46/',
  'https://youtu.be/aBxjDBC4M1U',
  'https://www.geeksforgeeks.org/union-find/',
  '/plus/dsa/problems/disjoint-set-',
  '/plus/dsa/problems/disjoint-set-?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_394',
  'striver_a2z_sheet_id',
  'striver_sub_64',
  'Find the MST weight',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/prims-algorithm-minimum-spanning-tree-c-and-java-g-45/',
  'https://youtu.be/mJcZjjKzeqk',
  'https://www.geeksforgeeks.org/kruskals-minimum-spanning-tree-using-stl-in-c/',
  '/plus/dsa/problems/find-the-mst-weight',
  '/plus/dsa/problems/find-the-mst-weight?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_395',
  'striver_a2z_sheet_id',
  'striver_sub_64',
  'Number of operations to make network connected',
  5,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/number-of-operations-to-make-network-connected-dsu-g-49/',
  'https://youtu.be/FYrl7iz9_ZU',
  'https://leetcode.com/problems/number-of-operations-to-make-network-connected/',
  '/plus/dsa/problems/number-of-operations-to-make-network-connected',
  '/plus/dsa/problems/number-of-operations-to-make-network-connected?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_396',
  'striver_a2z_sheet_id',
  'striver_sub_64',
  'Most stones removed with same row or column',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/most-stones-removed-with-same-row-or-column-dsu-g-53/',
  'https://youtu.be/OwMNX8SPavM',
  'https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/',
  '/plus/dsa/problems/most-stones-removed-with-same-row-or-column',
  '/plus/dsa/problems/most-stones-removed-with-same-row-or-column?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_397',
  'striver_a2z_sheet_id',
  'striver_sub_64',
  'Accounts merge',
  7,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/accounts-merge-dsu-g-50/',
  'https://youtu.be/FMwpt_aQOGw',
  'https://leetcode.com/problems/accounts-merge/',
  '/plus/dsa/problems/accounts-merge',
  '/plus/dsa/problems/accounts-merge?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_398',
  'striver_a2z_sheet_id',
  'striver_sub_64',
  'Number of islands II',
  8,
  'HARD'::"Difficulty",
  'https://takeuforward.org/graph/number-of-islands-ii-online-queries-dsu-g-51/',
  'https://youtu.be/Rn6B-Q4SNyA',
  'https://leetcode.com/problems/number-of-islands-ii/',
  '/plus/dsa/problems/number-of-islands-ii',
  '/plus/dsa/problems/number-of-islands-ii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_399',
  'striver_a2z_sheet_id',
  'striver_sub_64',
  'Making a large island',
  9,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/making-a-large-island-dsu-g-52/',
  'https://youtu.be/lgiz0Oup6gM',
  'https://leetcode.com/problems/making-a-large-island/',
  '/plus/dsa/problems/making-a-large-island',
  '/plus/dsa/problems/making-a-large-island?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_400',
  'striver_a2z_sheet_id',
  'striver_sub_64',
  'Swim in Rising Water',
  10,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/swim-in-rising-water',
  NULL,
  'https://leetcode.com/problems/swim-in-rising-water/',
  '/plus/dsa/problems/swim-in-rising-water',
  '/plus/dsa/problems/swim-in-rising-water?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_401',
  'striver_a2z_sheet_id',
  'striver_sub_65',
  'Bridges in graph',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/graph/bridges-in-graph-using-tarjans-algorithm-of-time-in-and-low-time-g-55/',
  'https://youtu.be/qrAub5z8FeA',
  'https://leetcode.com/problems/critical-connections-in-a-network/discuss/382385/find-bridges-in-a-graph',
  '/plus/dsa/problems/bridges-in-graph',
  '/plus/dsa/problems/bridges-in-graph?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_402',
  'striver_a2z_sheet_id',
  'striver_sub_65',
  'Articulation point in graph',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/articulation-point-in-graph-g-56/',
  'https://youtu.be/j1QDfU21iZk',
  'https://www.geeksforgeeks.org/articulation-points-or-cut-vertices-in-a-graph/',
  '/plus/dsa/problems/articulation-point-in-graph',
  '/plus/dsa/problems/articulation-point-in-graph?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_403',
  'striver_a2z_sheet_id',
  'striver_sub_65',
  'Kosaraju''s algorithm',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/graph/strongly-connected-components-kosarajus-algorithm-g-54/',
  'https://www.youtube.com/watch?v=V8qIqJxCioo&list=PLgUwDviBIf0rGEWe64KWas0Nryn7SCRWw&index=27',
  'https://leetcode.com/problems/maximum-number-of-non-overlapping-substrings/discuss/766485/kosaraju-algorithm-on',
  '/plus/dsa/problems/kosaraju''s-algorithm',
  '/plus/dsa/problems/kosaraju''s-algorithm?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_404',
  'striver_a2z_sheet_id',
  'striver_sub_67',
  'Introduction to DP',
  1,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/dynamic-programming-introduction/',
  'https://youtu.be/tyB0ztf0DNY',
  'https://www.geeksforgeeks.org/dynamic-programming/',
  '/plus/dsa/problems/introduction-to-dp',
  '/plus/dsa/problems/introduction-to-dp',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_405',
  'striver_a2z_sheet_id',
  'striver_sub_68',
  'Climbing stairs',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/dynamic-programming-climbing-stairs/',
  'https://youtu.be/mLfjzJsN8us',
  'https://leetcode.com/problems/climbing-stairs/',
  '/plus/dsa/problems/climbing-stairs',
  '/plus/dsa/problems/climbing-stairs?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_406',
  'striver_a2z_sheet_id',
  'striver_sub_68',
  'Frog Jump',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/dynamic-programming-frog-jump-dp-3/',
  'https://www.youtube.com/watch?v=EgG3jsGoPvQ',
  'https://www.geeksforgeeks.org/minimum-number-of-jumps-to-reach-end-of-a-given-array/',
  '/plus/dsa/problems/frog-jump',
  '/plus/dsa/problems/frog-jump?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_407',
  'striver_a2z_sheet_id',
  'striver_sub_68',
  'Frog jump with K distances',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/dynamic-programming-frog-jump-with-k-distances-dp-4/',
  'https://www.youtube.com/watch?v=Kmh3rhyEtB8',
  'https://www.geeksforgeeks.org/frog-jump-problem-dp-in-java/',
  '/plus/dsa/problems/frog-jump-with-k-distances',
  '/plus/dsa/problems/frog-jump-with-k-distances?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_408',
  'striver_a2z_sheet_id',
  'striver_sub_68',
  'Maximum sum of non adjacent elements',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/maximum-sum-of-non-adjacent-elements-dp-5/',
  'https://www.youtube.com/watch?v=GrMBfJNk_NY',
  'https://leetcode.com/problems/house-robber/',
  '/plus/dsa/problems/maximum-sum-of-non-adjacent-elements',
  '/plus/dsa/problems/maximum-sum-of-non-adjacent-elements?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_409',
  'striver_a2z_sheet_id',
  'striver_sub_68',
  'House robber',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/dynamic-programming-house-robber-dp-6/',
  'https://www.youtube.com/watch?v=3WaxQMELSkw',
  'https://leetcode.com/problems/house-robber-ii/',
  '/plus/dsa/problems/house-robber',
  '/plus/dsa/problems/house-robber?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_410',
  'striver_a2z_sheet_id',
  'striver_sub_69',
  'Ninja''s training',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/dynamic-programming-ninjas-training-dp-7/',
  'https://www.youtube.com/watch?v=AE39gJYuRog',
  'https://www.geeksforgeeks.org/ninja-training/',
  '/plus/dsa/problems/ninja''s-training',
  '/plus/dsa/problems/ninja''s-training?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_411',
  'striver_a2z_sheet_id',
  'striver_sub_69',
  'Grid Unique Paths : DP on Grids (DP8)',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/grid-unique-paths-dp-on-grids-dp8/',
  'https://www.youtube.com/watch?v=sdE0A2Oxofw',
  'https://leetcode.com/problems/unique-paths/',
  '/plus/dsa/problems/grid-unique-paths',
  '/plus/dsa/problems/grid-unique-paths?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_412',
  'striver_a2z_sheet_id',
  'striver_sub_69',
  'Unique paths II',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/grid-unique-paths-2-dp-9/',
  'https://www.youtube.com/watch?v=TmhpgXScLyY',
  'https://leetcode.com/problems/unique-paths-ii/',
  '/plus/dsa/problems/unique-paths-ii',
  '/plus/dsa/problems/unique-paths-ii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_413',
  'striver_a2z_sheet_id',
  'striver_sub_69',
  'Minimum Falling Path Sum',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/minimum-path-sum-in-a-grid-dp-10/',
  'https://youtu.be/_rgTlyky1uQ',
  'https://leetcode.com/problems/minimum-path-sum/',
  '/plus/dsa/problems/minimum-falling-path-sum',
  '/plus/dsa/problems/minimum-falling-path-sum?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_414',
  'striver_a2z_sheet_id',
  'striver_sub_69',
  'Triangle',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/minimum-path-sum-in-triangular-grid-dp-11/',
  'https://www.youtube.com/watch?v=SrP-PiLSYC0',
  'https://leetcode.com/problems/triangle/',
  '/plus/dsa/problems/triangle',
  '/plus/dsa/problems/triangle?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_415',
  'striver_a2z_sheet_id',
  'striver_sub_69',
  'Ninja and his Friends',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/3-d-dp-ninja-and-his-friends-dp-13/',
  'https://www.youtube.com/watch?v=QGfn7JeXK54',
  'https://www.geeksforgeeks.org/chocolates-pickup-problem-dp-33/',
  '/plus/dsa/problems/ninja-and-his-friends',
  '/plus/dsa/problems/ninja-and-his-friends?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_416',
  'striver_a2z_sheet_id',
  'striver_sub_70',
  'Subset sum equal to target (DP- 14)',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/subset-sum-equal-to-target-dp-14/',
  'https://www.youtube.com/watch?v=fWX9xDmIzRI',
  'https://www.geeksforgeeks.org/subset-sum-problem-dp-25/',
  '/plus/dsa/problems/subset-sum-equals-to-target',
  '/plus/dsa/problems/subset-sum-equals-to-target?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_417',
  'striver_a2z_sheet_id',
  'striver_sub_70',
  'Partition equal subset sum',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/partition-equal-subset-sum-dp-15/',
  'https://www.youtube.com/watch?v=7win3dcgo3k',
  'https://leetcode.com/problems/partition-equal-subset-sum/',
  '/plus/dsa/problems/partition-equal-subset-sum',
  '/plus/dsa/problems/partition-equal-subset-sum?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_418',
  'striver_a2z_sheet_id',
  'striver_sub_70',
  'Partition a set into two subsets with minimum absolute sum difference',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/partition-set-into-2-subsets-with-min-absolute-sum-diff-dp-16/',
  'https://www.youtube.com/watch?v=GS_OqZb2CWc',
  'https://leetcode.com/problems/partition-array-into-two-arrays-to-minimize-sum-difference/',
  '/plus/dsa/problems/partition-a-set-into-two-subsets-with-minimum-absolute-sum-difference',
  '/plus/dsa/problems/partition-a-set-into-two-subsets-with-minimum-absolute-sum-difference?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_419',
  'striver_a2z_sheet_id',
  'striver_sub_70',
  'Count subsets with sum K',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/count-subsets-with-sum-k-dp-17/',
  'https://www.youtube.com/watch?v=ZHyb-A2Mte4',
  'https://www.geeksforgeeks.org/count-of-subsets-with-sum-equal-to-x/',
  '/plus/dsa/problems/count-subsets-with-sum-k',
  '/plus/dsa/problems/count-subsets-with-sum-k?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_420',
  'striver_a2z_sheet_id',
  'striver_sub_70',
  'Count partitions with given difference',
  5,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/count-partitions-with-given-difference-dp-18/',
  'https://www.youtube.com/watch?v=zoilQD1kYSg',
  'https://www.geeksforgeeks.org/partition-a-set-into-two-subsets-such-that-the-difference-of-subset-sums-is-minimum/',
  '/plus/dsa/problems/count-partitions-with-given-difference',
  '/plus/dsa/problems/count-partitions-with-given-difference?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_421',
  'striver_a2z_sheet_id',
  'striver_sub_70',
  'Assign Cookies',
  6,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/assign-cookies',
  'https://youtu.be/DIX2p7vb9co?si=GofAIDimue-Av0Fi',
  'https://leetcode.com/problems/assign-cookies/',
  '/plus/dsa/problems/assign-cookies',
  '/plus/dsa/problems/assign-cookies?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_422',
  'striver_a2z_sheet_id',
  'striver_sub_70',
  'Minimum Coins (DP - 20)',
  7,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/minimum-coins-dp-20/',
  'https://www.youtube.com/watch?v=myPeWb3Y68A',
  'https://leetcode.com/problems/coin-change/',
  '/plus/dsa/problems/minimum-coins',
  '/plus/dsa/problems/minimum-coins?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_423',
  'striver_a2z_sheet_id',
  'striver_sub_70',
  'Target sum',
  8,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/target-sum-dp-21/',
  'https://www.youtube.com/watch?v=b3GD8263-PQ',
  'https://leetcode.com/problems/target-sum/',
  '/plus/dsa/problems/target-sum',
  '/plus/dsa/problems/target-sum?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_424',
  'striver_a2z_sheet_id',
  'striver_sub_70',
  'Coin Change 2 (DP - 22)',
  9,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/coin-change-2-dp-22/',
  'https://www.youtube.com/watch?v=HgyouUi11zk',
  'https://leetcode.com/problems/coin-change-2/',
  '/plus/dsa/problems/coin-change-ii',
  '/plus/dsa/problems/coin-change-ii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_425',
  'striver_a2z_sheet_id',
  'striver_sub_70',
  'Unbounded knapsack',
  10,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/unbounded-knapsack-dp-23/',
  'https://youtu.be/OgvOZ6OrJoY',
  'https://www.geeksforgeeks.org/unbounded-knapsack-repetition-items-allowed/',
  '/plus/dsa/problems/unbounded-knapsack',
  '/plus/dsa/problems/unbounded-knapsack?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_426',
  'striver_a2z_sheet_id',
  'striver_sub_70',
  'Rod Cutting Problem | (DP - 24)',
  11,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/rod-cutting-problem-dp-24/',
  'https://youtu.be/mO8XpGoJwuo',
  'https://www.geeksforgeeks.org/cutting-a-rod-dp-13/',
  '/plus/dsa/problems/rod-cutting-problem',
  '/plus/dsa/problems/rod-cutting-problem?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_427',
  'striver_a2z_sheet_id',
  'striver_sub_71',
  'Longest common subsequence',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/print-longest-common-subsequence-dp-26/',
  'https://youtu.be/-zI4mrF2Pb4',
  'https://leetcode.com/problems/longest-common-subsequence?utm=codolio',
  '/plus/dsa/problems/longest-common-subsequence',
  '/plus/dsa/problems/longest-common-subsequence?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_428',
  'striver_a2z_sheet_id',
  'striver_sub_71',
  'Print Longest Common Subsequence | (DP - 26)',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/print-longest-common-subsequence-dp-26/',
  'https://youtu.be/-zI4mrF2Pb4',
  'https://www.geeksforgeeks.org/longest-common-subsequence-dp-4/',
  '/plus/dsa/problems/longest-common-subsequence',
  '/plus/dsa/problems/longest-common-subsequence?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_429',
  'striver_a2z_sheet_id',
  'striver_sub_71',
  'Longest common substring',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-common-substring-dp-27/',
  'https://youtu.be/_wP9mWNPL5w',
  'https://www.geeksforgeeks.org/longest-common-substring-dp-29/',
  '/plus/dsa/problems/longest-common-substring',
  '/plus/dsa/problems/longest-common-substring?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_430',
  'striver_a2z_sheet_id',
  'striver_sub_71',
  'Longest palindromic subsequence',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-palindromic-subsequence-dp-28/',
  'https://youtu.be/6i_T5kkfv4A',
  'https://leetcode.com/problems/longest-palindromic-subsequence/',
  '/plus/dsa/problems/longest-palindromic-subsequence',
  '/plus/dsa/problems/longest-palindromic-subsequence?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_431',
  'striver_a2z_sheet_id',
  'striver_sub_71',
  'Minimum insertions to make string palindrome | DP-29',
  5,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/minimum-insertions-to-make-string-palindrome-dp-29/',
  'https://www.youtube.com/watch?v=xPBLEj41rFU',
  'https://leetcode.com/problems/minimum-insertion-steps-to-make-a-string-palindrome/',
  '/plus/dsa/problems/minimum-insertions-to-make-string-palindrome',
  '/plus/dsa/problems/minimum-insertions-to-make-string-palindrome?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_432',
  'striver_a2z_sheet_id',
  'striver_sub_71',
  'Minimum insertions or deletions to convert string A to B',
  6,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/minimum-insertions-deletions-to-convert-string-dp-30/',
  'https://www.youtube.com/watch?v=yMnH0jrir0Q',
  'https://leetcode.com/problems/delete-operation-for-two-strings/',
  '/plus/dsa/problems/minimum-insertions-or-deletions-to-convert-string-a-to-b',
  '/plus/dsa/problems/minimum-insertions-or-deletions-to-convert-string-a-to-b?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_433',
  'striver_a2z_sheet_id',
  'striver_sub_71',
  'Shortest common supersequence',
  7,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/shortest-common-supersequence-dp-31/',
  'https://youtu.be/xElxAuBcvsU',
  'https://leetcode.com/problems/shortest-common-supersequence/',
  '/plus/dsa/problems/shortest-common-supersequence',
  '/plus/dsa/problems/shortest-common-supersequence?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_434',
  'striver_a2z_sheet_id',
  'striver_sub_71',
  'Distinct subsequences',
  8,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/distinct-subsequences-dp-32/',
  'https://youtu.be/nVG7eTiD2bY',
  'https://leetcode.com/problems/distinct-subsequences/',
  '/plus/dsa/problems/distinct-subsequences',
  '/plus/dsa/problems/distinct-subsequences?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_435',
  'striver_a2z_sheet_id',
  'striver_sub_71',
  'Edit distance',
  9,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/edit-distance-dp-33/',
  'https://youtu.be/fJaKO8FbDdo',
  'https://leetcode.com/problems/edit-distance/',
  '/plus/dsa/problems/edit-distance',
  '/plus/dsa/problems/edit-distance?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_436',
  'striver_a2z_sheet_id',
  'striver_sub_71',
  'Wildcard matching',
  10,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/wildcard-matching-dp-34/',
  'https://youtu.be/ZmlQ3vgAOMo',
  'https://leetcode.com/problems/wildcard-matching/',
  '/plus/dsa/problems/wildcard-matching',
  '/plus/dsa/problems/wildcard-matching?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_437',
  'striver_a2z_sheet_id',
  'striver_sub_72',
  'Best time to buy and sell stock',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/stock-buy-and-sell/',
  'https://youtu.be/excAOvwF_Wk',
  'https://leetcode.com/problems/best-time-to-buy-and-sell-stock/',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_438',
  'striver_a2z_sheet_id',
  'striver_sub_72',
  'Best time to buy and sell stock II',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/buy-and-sell-stock-ii-dp-36/',
  'https://youtu.be/nGJmxkUJQGs',
  'https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock-ii',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock-ii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_439',
  'striver_a2z_sheet_id',
  'striver_sub_72',
  'Best time to buy and sell stock III',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/buy-and-sell-stock-iii-dp-37/',
  'https://youtu.be/-uQGzhYj8BQ',
  'https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iii/description/',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock-iii',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock-iii?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_440',
  'striver_a2z_sheet_id',
  'striver_sub_72',
  'Best time to buy and sell stock IV',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/buy-and-sell-stock-iv-dp-38/',
  'https://youtu.be/IV1dHbk5CDc',
  'https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iv/',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock-iv',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock-iv?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_441',
  'striver_a2z_sheet_id',
  'striver_sub_72',
  'Best Time to Buy and Sell Stock with Cooldown',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/buy-and-sell-stocks-with-cooldown-dp-39/',
  'https://youtu.be/IGIe46xw3YY',
  'https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock-with-cooldown',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_442',
  'striver_a2z_sheet_id',
  'striver_sub_72',
  'Best time to buy and sell stock with transaction fees',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/buy-and-sell-stocks-with-transaction-fees-dp-40/',
  'https://youtu.be/k4eK-vEmnKg',
  'https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock-with-cooldown-and-transaction-fees',
  '/plus/dsa/problems/best-time-to-buy-and-sell-stock-with-cooldown-and-transaction-fees?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_443',
  'striver_a2z_sheet_id',
  'striver_sub_73',
  'Longest Increasing Subsequence',
  1,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-increasing-subsequence-binary-search-dp-43/',
  'https://youtu.be/on2hvxBXJH4',
  'https://leetcode.com/problems/longest-increasing-subsequence?utm=codolio',
  '/plus/dsa/problems/longest-increasing-subsequence',
  '/plus/dsa/problems/longest-increasing-subsequence?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_444',
  'striver_a2z_sheet_id',
  'striver_sub_73',
  'Print Longest Increasing Subsequence',
  2,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/printing-longest-increasing-subsequence-dp-42/',
  'https://youtu.be/IFfYfonAFGc',
  'https://www.geeksforgeeks.org/construction-of-longest-monotonically-increasing-subsequence-n-log-n/',
  '/plus/dsa/problems/print-longest-increasing-subsequence',
  '/plus/dsa/problems/print-longest-increasing-subsequence?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_445',
  'striver_a2z_sheet_id',
  'striver_sub_73',
  'Longest Increasing Subsequence |(DP-43)',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-increasing-subsequence-binary-search-dp-43/',
  'https://youtu.be/on2hvxBXJH4',
  'https://leetcode.com/problems/longest-increasing-subsequence/',
  '/plus/dsa/problems/longest-increasing-subsequence',
  '/plus/dsa/problems/longest-increasing-subsequence?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_446',
  'striver_a2z_sheet_id',
  'striver_sub_73',
  'Largest Divisible Subset',
  4,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-divisible-subset-dp-44/',
  'https://youtu.be/gDuZwBW9VvM',
  'https://leetcode.com/problems/largest-divisible-subset/',
  '/plus/dsa/problems/largest-divisible-subset',
  '/plus/dsa/problems/largest-divisible-subset?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_447',
  'striver_a2z_sheet_id',
  'striver_sub_73',
  'Longest String Chain',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-string-chain-dp-45/',
  'https://youtu.be/YY8iBaYcc4g',
  'https://leetcode.com/problems/longest-string-chain?utm=codolio',
  '/plus/dsa/problems/longest-string-chain',
  '/plus/dsa/problems/longest-string-chain?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_448',
  'striver_a2z_sheet_id',
  'striver_sub_73',
  'Longest Bitonic Subsequence',
  6,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-bitonic-subsequence-dp-46/',
  'https://youtu.be/y4vN0WNdrlg',
  'https://www.geeksforgeeks.org/longest-bitonic-subsequence/',
  '/plus/dsa/problems/longest-bitonic-subsequence',
  '/plus/dsa/problems/longest-bitonic-subsequence?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_449',
  'striver_a2z_sheet_id',
  'striver_sub_73',
  'Number of Longest Increasing Subsequences',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/number-of-longest-increasing-subsequences-dp-47/',
  'https://youtu.be/cKVl1TFdNXg',
  'https://leetcode.com/problems/number-of-longest-increasing-subsequence/',
  '/plus/dsa/problems/number-of-longest-increasing-subsequences',
  '/plus/dsa/problems/number-of-longest-increasing-subsequences?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_450',
  'striver_a2z_sheet_id',
  'striver_sub_74',
  'Matrix chain multiplication',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/dynamic-programming/matrix-chain-multiplication-dp-48/',
  'https://youtu.be/vRVfmbCFW7Y',
  'https://www.geeksforgeeks.org/matrix-chain-multiplication-dp-8/',
  '/plus/dsa/problems/matrix-chain-multiplication',
  '/plus/dsa/problems/matrix-chain-multiplication?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_451',
  'striver_a2z_sheet_id',
  'striver_sub_74',
  'Matrix Chain Multiplication | Bottom-Up|(DP-49)',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/matrix-chain-multiplication-tabulation-method-dp-49/',
  'https://youtu.be/pDCXsbAw5Cg',
  'https://www.geeksforgeeks.org/matrix-chain-multiplication-dp-8/',
  '/plus/dsa/problems/matrix-chain-multiplication',
  '/plus/dsa/problems/matrix-chain-multiplication?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_452',
  'striver_a2z_sheet_id',
  'striver_sub_74',
  'Minimum cost to cut the stick',
  3,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/minimum-cost-to-cut-the-stick-dp-50/',
  'https://youtu.be/xwomavsC86c',
  'https://leetcode.com/problems/minimum-cost-to-cut-a-stick/',
  '/plus/dsa/problems/minimum-cost-to-cut-the-stick',
  '/plus/dsa/problems/minimum-cost-to-cut-the-stick?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_453',
  'striver_a2z_sheet_id',
  'striver_sub_74',
  'Burst balloons',
  4,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/burst-balloons-partition-dp-dp-51/',
  'https://youtu.be/Yz4LlDSlkns',
  'https://leetcode.com/problems/burst-balloons/',
  '/plus/dsa/problems/burst-balloons',
  '/plus/dsa/problems/burst-balloons?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_454',
  'striver_a2z_sheet_id',
  'striver_sub_74',
  'Different Ways to Evaluate a Boolean Expression',
  5,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/evaluate-boolean-expression-to-true-partition-dp-dp-52/',
  'https://youtu.be/MM7fXopgyjw',
  'https://leetcode.com/problems/parsing-a-boolean-expression/',
  '/plus/dsa/problems/different-ways-to-evaluate-a-boolean-expression',
  '/plus/dsa/problems/different-ways-to-evaluate-a-boolean-expression?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_455',
  'striver_a2z_sheet_id',
  'striver_sub_74',
  'Palindrome partitioning II ',
  6,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/palindrome-partitioning-ii-front-partition-dp-53/',
  'https://youtu.be/_H8V5hJUGd0',
  'https://leetcode.com/problems/palindrome-partitioning-ii/',
  '/plus/dsa/problems/palindrome-partitioning-ii-',
  '/plus/dsa/problems/palindrome-partitioning-ii-?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_456',
  'striver_a2z_sheet_id',
  'striver_sub_74',
  'Partition Array for Maximum Sum',
  7,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/partition-array-for-maximum-sum-front-partition-dp-54/',
  'https://youtu.be/PhWWJmaKfMc',
  'https://leetcode.com/problems/partition-array-for-maximum-sum/',
  '/plus/dsa/problems/partition-array-for-maximum-sum',
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_457',
  'striver_a2z_sheet_id',
  'striver_sub_75',
  'Maximum Rectangle Area with all 1''s|(DP-55)',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/maximum-rectangle-area-with-all-1s-dp-on-rectangles-dp-55/',
  'https://youtu.be/tOylVCugy9k',
  'https://leetcode.com/problems/maximal-rectangle/',
  '/plus/dsa/problems/maximum-rectangles',
  '/plus/dsa/problems/maximum-rectangles?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_458',
  'striver_a2z_sheet_id',
  'striver_sub_75',
  'Count Square Submatrices with All Ones|(DP-56)',
  2,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/count-square-submatrices-with-all-1s-dp-on-rectangles-dp-56/',
  'https://youtu.be/auS1fynpnjo',
  'https://leetcode.com/problems/count-square-submatrices-with-all-ones/',
  NULL,
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_459',
  'striver_a2z_sheet_id',
  'striver_sub_77',
  'Trie Implementation and Operations',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/implement-trie-1/',
  'https://www.youtube.com/watch?v=dBGUmUQhjaM&list=PLgUwDviBIf0pcIDCZnxhv0LkHf5KzG9zp',
  'https://leetcode.com/problems/implement-trie-prefix-tree/',
  '/plus/dsa/problems/trie-implementation-and-operations',
  '/plus/dsa/problems/trie-implementation-and-operations?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_460',
  'striver_a2z_sheet_id',
  'striver_sub_78',
  'Trie Implementation and Advanced Operations',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/implement-trie-ii/',
  NULL,
  'https://www.geeksforgeeks.org/advantages-trie-data-structure/',
  '/plus/dsa/problems/trie-implementation-and-advanced-operations',
  '/plus/dsa/problems/trie-implementation-and-advanced-operations?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_461',
  'striver_a2z_sheet_id',
  'striver_sub_78',
  'Longest Word with All Prefixes',
  2,
  'MEDIUM'::"Difficulty",
  NULL,
  'https://www.youtube.com/watch?v=AWnBa91lThI&list=PLgUwDviBIf0pcIDCZnxhv0LkHf5KzG9zp&index=3',
  'https://www.geeksforgeeks.org/longest-string-such-that-every-prefix-is-also-present-in-the-string/',
  '/plus/dsa/problems/longest-word-with-all-prefixes',
  '/plus/dsa/problems/longest-word-with-all-prefixes?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_462',
  'striver_a2z_sheet_id',
  'striver_sub_78',
  'Number of distinct substrings in a string',
  3,
  'MEDIUM'::"Difficulty",
  'https://takeuforward.org/data-structure/number-of-distinct-substrings-in-a-string-using-trie/',
  'https://www.youtube.com/watch?v=RV0QeTyHZxo&list=PLgUwDviBIf0pcIDCZnxhv0LkHf5KzG9zp&index=4',
  'https://www.geeksforgeeks.org/count-distinct-substrings-of-a-string-using-suffix-array/',
  '/plus/dsa/problems/number-of-distinct-substrings-in-a-string',
  '/plus/dsa/problems/number-of-distinct-substrings-in-a-string?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_463',
  'striver_a2z_sheet_id',
  'striver_sub_78',
  'Bit PreRequisites for TRIE Problems',
  4,
  'EASY'::"Difficulty",
  NULL,
  'https://youtu.be/5iyuU4hQFrw',
  'https://leetcode.com/problems/single-number?utm=codolio',
  NULL,
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_464',
  'striver_a2z_sheet_id',
  'striver_sub_78',
  'Maximum XOR of two numbers in an array',
  5,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/maximum-xor-of-two-numbers-in-an-array/',
  'https://www.youtube.com/watch?v=EIhAwfHubE8&list=PLgUwDviBIf0pcIDCZnxhv0LkHf5KzG9zp&index=6',
  'https://leetcode.com/problems/maximum-xor-of-two-numbers-in-an-array/',
  '/plus/dsa/problems/maximum-xor-of-two-numbers-in-an-array',
  '/plus/dsa/problems/maximum-xor-of-two-numbers-in-an-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_465',
  'striver_a2z_sheet_id',
  'striver_sub_78',
  'Maximum Xor with an element from an array',
  6,
  'HARD'::"Difficulty",
  'https://takeuforward.org/trie/maximum-xor-queries-trie/',
  'https://www.youtube.com/watch?v=Q8LhG9Pi5KM&list=PLgUwDviBIf0pcIDCZnxhv0LkHf5KzG9zp&index=7',
  'https://leetcode.com/problems/maximum-xor-with-an-element-from-array/',
  '/plus/dsa/problems/maximum-xor-with-an-element-from-an-array',
  '/plus/dsa/problems/maximum-xor-with-an-element-from-an-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_466',
  'striver_a2z_sheet_id',
  'striver_sub_80',
  'Minimum number of bracket reversals to make an expression balanced',
  1,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/minimum-number-of-bracket-reversals-needed-to-make-an-expression-balanced',
  NULL,
  'https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/',
  '/plus/dsa/problems/minimum-number-of-bracket-reversals-to-make-an-expression-balanced',
  '/plus/dsa/problems/minimum-number-of-bracket-reversals-to-make-an-expression-balanced?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_467',
  'striver_a2z_sheet_id',
  'striver_sub_80',
  'Count and say',
  2,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/count-and-say',
  NULL,
  'https://leetcode.com/problems/count-and-say/',
  '/plus/dsa/problems/count-and-say',
  '/plus/dsa/problems/count-and-say?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_468',
  'striver_a2z_sheet_id',
  'striver_sub_80',
  'Hashing In Strings | Theory',
  3,
  'EASY'::"Difficulty",
  'https://takeuforward.org/data-structure/hashing-in-strings',
  NULL,
  'https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string?utm=codolio',
  NULL,
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_469',
  'striver_a2z_sheet_id',
  'striver_sub_80',
  'Rabin Karp Algorithm',
  4,
  'HARD'::"Difficulty",
  NULL,
  NULL,
  'https://leetcode.com/problems/repeated-string-match/discuss/416144/Rabin-Karp-algorithm-C%2B%2B-implementation',
  '/plus/dsa/problems/rabin-karp-algorithm',
  '/plus/dsa/problems/rabin-karp-algorithm?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_470',
  'striver_a2z_sheet_id',
  'striver_sub_80',
  'Z function',
  5,
  'HARD'::"Difficulty",
  NULL,
  NULL,
  'https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string?utm=codolio',
  NULL,
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_471',
  'striver_a2z_sheet_id',
  'striver_sub_80',
  'KMP Algorithm or LPS array',
  6,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/kmp-algorithm-or-lps-array',
  NULL,
  'https://leetcode.com/problems/implement-strstr/',
  '/plus/dsa/problems/kmp-algorithm-or-lps-array',
  '/plus/dsa/problems/kmp-algorithm-or-lps-array?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_472',
  'striver_a2z_sheet_id',
  'striver_sub_80',
  'Shortest Palindrome',
  7,
  'HARD'::"Difficulty",
  NULL,
  NULL,
  'https://leetcode.com/problems/shortest-palindrome?utm=codolio',
  NULL,
  NULL,
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_473',
  'striver_a2z_sheet_id',
  'striver_sub_80',
  'Longest happy prefix',
  8,
  'HARD'::"Difficulty",
  'https://takeuforward.org/data-structure/longest-happy-prefix',
  NULL,
  'https://leetcode.com/problems/longest-happy-prefix/',
  '/plus/dsa/problems/longest-happy-prefix',
  '/plus/dsa/problems/longest-happy-prefix?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();

INSERT INTO "SheetProblem" ("id","sheetId","sectionId","title","order","difficulty","articleUrl","youtubeUrl","practiceUrl","plusUrl","editorialUrl","questionId","createdAt","updatedAt")
VALUES (
  'striver_prob_474',
  'striver_a2z_sheet_id',
  'striver_sub_80',
  'Count Palindromic Subsequences',
  9,
  'MEDIUM'::"Difficulty",
  NULL,
  NULL,
  'https://leetcode.com/problems/count-palindromic-subsequences/',
  '/plus/dsa/problems/count-palindromic-subsequences',
  '/plus/dsa/problems/count-palindromic-subsequences?tab=editorial',
  NULL,
  NOW(),
  NOW()
)
ON CONFLICT ("id") DO UPDATE
  SET "title"=EXCLUDED."title",
      "order"=EXCLUDED."order",
      "difficulty"=EXCLUDED."difficulty",
      "articleUrl"=EXCLUDED."articleUrl",
      "youtubeUrl"=EXCLUDED."youtubeUrl",
      "practiceUrl"=EXCLUDED."practiceUrl",
      "plusUrl"=EXCLUDED."plusUrl",
      "editorialUrl"=EXCLUDED."editorialUrl",
      "updatedAt"=NOW();
