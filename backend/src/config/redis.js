import Redis from "ioredis";

const redisClient = new Redis(process.env.REDIS_URL, {
  maxRetriesPerRequest: 1,
  enableReadyCheck: false,
  // Cap reconnect backoff so a downed Redis doesn't spin hot.
  retryStrategy: (times) => Math.min(times * 200, 5000),
});

let loggedError = false;

redisClient.on("connect", () => {
  loggedError = false;
  console.log("✅ Redis Connected");
});

redisClient.on("error", (err) => {
  // Log once per outage instead of on every retry.
  if (!loggedError) {
    console.error("Redis Error:", err.message);
    loggedError = true;
  }
});

export default redisClient;