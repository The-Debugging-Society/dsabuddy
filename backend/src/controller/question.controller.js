import { prisma } from "../config/prismaClient.js";

const getAuthUserId = (req) => req.user?.userId ?? null;

export const listQuestions = async (req, res) => {
  const { q, difficulty, tag } = req.query;
  const take = Number(req.query.take ?? 50);
  const skip = Number(req.query.skip ?? 0);

  const userId = getAuthUserId(req);

  const where = {
    ...(q
      ? {
          OR: [
            { title: { contains: q, mode: "insensitive" } },
            { displayName: { contains: q, mode: "insensitive" } },
          ],
        }
      : {}),
    ...(difficulty ? { difficulty } : {}),
    ...(tag ? { tags: { has: tag } } : {}),
  };

  const [questions, total] = await Promise.all([
    prisma.questionBank.findMany({
      where,
      take,
      skip,
      orderBy: [{ createdAt: "desc" }],
      select: {
        id: true,
        title: true,
        displayName: true,
        difficulty: true,
        leetcodeUrl: true,
        sourcePlatform: true,
        sourceId: true,
        sourceSlug: true,
        slug: true,
        sourceUrl: true,
        sourceRating: true,
        paidOnly: true,
        acceptanceRate: true,
        frequency: true,
        acceptedCount: true,
        submissionCount: true,
        tags: true,
        ...(userId
          ? {
              userStatuses: {
                where: { userId },
                select: { status: true, solvedAt: true, updatedAt: true },
              },
            }
          : {}),
        createdAt: true,
        updatedAt: true,
      },
    }),
    prisma.questionBank.count({ where }),
  ]);

  return res.status(200).json({
    questions,
    pagination: {
      total,
      take,
      skip,
      hasMore: skip + questions.length < total,
    },
  });
};

export const getRevisionQuestions = async (req, res) => {
  const userId = getAuthUserId(req);
  const limit = Math.min(Number(req.query.limit ?? 100), 200);

  // Random sample of ids via Postgres RANDOM(); then hydrate with relations.
  const randomRows = await prisma.$queryRaw`
    SELECT "id" FROM "QuestionBank" ORDER BY RANDOM() LIMIT ${limit}
  `;
  const ids = randomRows.map((r) => r.id);

  if (ids.length === 0) return res.status(200).json({ questions: [] });

  const questions = await prisma.questionBank.findMany({
    where: { id: { in: ids } },
    select: {
      id: true,
      title: true,
      displayName: true,
      difficulty: true,
      leetcodeUrl: true,
      sourcePlatform: true,
      sourceUrl: true,
      sourceRating: true,
      acceptanceRate: true,
      frequency: true,
      tags: true,
      ...(userId
        ? {
            userStatuses: {
              where: { userId },
              select: { status: true, solvedAt: true, updatedAt: true },
            },
          }
        : {}),
    },
  });

  return res.status(200).json({ questions });
};

export const getQuestionById = async (req, res) => {
  const { slug } = req.params;
  const userId = getAuthUserId(req);

  const question = await prisma.questionBank.findUnique({
    where: { slug },
    select: {
      id: true,
      title: true,
      displayName: true,
      difficulty: true,
      leetcodeUrl: true,
      sourcePlatform: true,
      sourceId: true,
      sourceSlug: true,
      slug: true,
      sourceUrl: true,
      sourceRating: true,
      paidOnly: true,
      acceptanceRate: true,
      frequency: true,
      statement: true,
      examples: true,
      constraints: true,
      acceptedCount: true,
      submissionCount: true,
      tags: true,
      ...(userId
        ? {
            userStatuses: {
              where: { userId },
              select: { status: true, solvedAt: true, updatedAt: true },
            },
          }
        : {}),
      createdAt: true,
      updatedAt: true,
    },
  });

  if (!question) return res.status(404).json({ error: "Question not found" });
  return res.status(200).json({ question });
};

export const createQuestion = async (req, res) => {
  const { tags, ...data } = req.body;

  const created = await prisma.questionBank.create({
    data: {
      ...data,
      tags: Array.isArray(tags) ? tags : [],
    },
    select: { id: true },
  });

  return res.status(201).json({ question: created });
};

export const updateQuestion = async (req, res) => {
  const { id } = req.params;
  const { tags, ...data } = req.body;

  const updated = await prisma.questionBank.update({
    where: { id },
    data: {
      ...data,
      ...(Array.isArray(tags) ? { tags } : {}),
    },
    select: { id: true, updatedAt: true },
  });

  return res.status(200).json({ question: updated });
};

export const deleteQuestion = async (req, res) => {
  const { id } = req.params;
  await prisma.questionBank.delete({ where: { id } });
  return res.status(204).send();
};
