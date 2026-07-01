import redisClient from "../config/redis.js";

export async function getCache(key) {
  try {
    const data = await redisClient.get(key);
    return data ? JSON.parse(data) : null;
  } catch (err) {
    console.error("Redis GET Error:", err.message);
    return null;
  }
}

export async function setCache(key, value, ttl = 300) {
  try {
    await redisClient.set(key, JSON.stringify(value), "EX", ttl);
  } catch (err) {
    console.error("Redis SET Error:", err.message);
  }
}

export async function deleteCache(key) {
  try {
    await redisClient.del(key);
  } catch (err) {
    console.error("Redis DEL Error:", err.message);
  }
}

// Non-blocking pattern invalidation via SCAN (avoids the blocking KEYS command).
export async function deleteCacheByPattern(pattern) {
  try {
    let cursor = "0";
    do {
      const [nextCursor, keys] = await redisClient.scan(
        cursor,
        "MATCH",
        pattern,
        "COUNT",
        100
      );
      cursor = nextCursor;
      if (keys.length > 0) {
        await redisClient.del(...keys);
      }
    } while (cursor !== "0");
  } catch (err) {
    console.error("Redis Pattern Delete Error:", err.message);
  }
}
