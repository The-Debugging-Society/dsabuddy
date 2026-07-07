import Redis from "ioredis";

const bullConnection = new Redis(process.env.REDIS_URL, {
  maxRetriesPerRequest: null,
  enableReadyCheck: false,
  retryStrategy: (times) => Math.min(times * 200, 5000),
});

let loggedError = false;

bullConnection.on("connect", () => {
  loggedError = false;
});

bullConnection.on("error", (err) => {
  if (!loggedError) {
    console.error("BullMQ Redis Error:", err.message);
    loggedError = true;
  }
});

export default bullConnection;
