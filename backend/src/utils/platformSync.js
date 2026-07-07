import { prisma } from "../config/prismaClient.js";
import { syncUserStats } from "../ingestion/index.js";
import { clearAnalyticsCache } from "../controller/dailyActivity.controller.js";

export async function syncPlatformConnection(userId, platform, username) {
  const stats = await syncUserStats({ platform, username });

  const updated = await prisma.platformConnection.update({
    where: { userId_platform: { userId, platform } },
    data: {
      problemsSolved: stats.problemsSolved,
      rating: stats.rating ?? stats.maxRating ?? null,
      rankLabel: stats.rankLabel ?? stats.maxRank ?? null,
      stars: stats.starRating ?? stats.stars ?? null,
      synced: true,
      lastSyncedAt: new Date(),
      topicBreakdown: stats.topicBreakdown ?? {},
    },
  });

  clearAnalyticsCache(username);

  return updated;
}
