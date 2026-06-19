import { prisma } from "../config/prismaClient.js";

export async function recalculateUserPoints(userId) {
  try {
    // 1. Fetch connected platforms stats
    const connections = await prisma.platformConnection.findMany({
      where: { userId },
      select: {
        platform: true,
        problemsSolved: true,
        rating: true,
        stars: true,
      },
    });

    let totalPoints = 0;

    for (const conn of connections) {
      const platform = conn.platform.toLowerCase();
      const solved = conn.problemsSolved ?? 0;
      const rating = conn.rating ?? 0;
      const stars = conn.stars ?? 0;

      if (platform === "leetcode") {
        totalPoints += solved * 10 + rating * 1;
      } else if (platform === "codeforces") {
        totalPoints += solved * 15 + rating * 1.5;
      } else if (platform === "codechef") {
        totalPoints += solved * 8 + stars * 100 + rating * 0.5;
      } else if (platform === "gfg") {
        totalPoints += solved * 5;
      }
    }

    // 2. Fetch in-app solved questions and add points based on difficulty
    const solvedQuestions = await prisma.userQuestion.findMany({
      where: {
        userId,
        status: "SOLVED",
      },
      select: {
        question: {
          select: {
            difficulty: true,
          },
        },
      },
    });

    for (const sq of solvedQuestions) {
      const diff = sq.question?.difficulty;
      if (diff === "EASY") {
        totalPoints += 10;
      } else if (diff === "MEDIUM") {
        totalPoints += 20;
      } else if (diff === "HARD") {
        totalPoints += 40;
      }
    }

    // 3. Update the User points field
    await prisma.user.update({
      where: { id: userId },
      data: { points: Math.round(totalPoints) },
    });

    console.log(`Recalculated points for user ${userId}: ${totalPoints}`);
    return totalPoints;
  } catch (error) {
    console.error(`Error recalculating points for user ${userId}:`, error);
    throw error;
  }
}
