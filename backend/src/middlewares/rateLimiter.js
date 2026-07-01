import rateLimit from "express-rate-limit";
import { RedisStore } from "rate-limit-redis";
import redisClient from "../config/redis.js";

const createRedisStore = (prefix) =>
  new RedisStore({
    prefix,
    sendCommand: (...args) => redisClient.call(...args),
  });

export const authLimiter = rateLimit({
  windowMs: 60 * 1000, // 1 minute
  max: 20, // 20 requests per minute
  standardHeaders: true,
  legacyHeaders: false,
  message: {
    error: "Too many authentication requests. Please try again later.",
  },
  store: createRedisStore("rl:auth:"),
  passOnStoreError: true,
});

export const apiLimiter = rateLimit({
  windowMs: 60 * 1000, // 1 minute
  max: 100, // 100 requests per minute (global protection)
  standardHeaders: true,
  legacyHeaders: false,
  message: {
    error: "Too many requests. Please try again later.",
  },
  store: createRedisStore("rl:api:"),
  passOnStoreError: true,
});

export const contactLimiter = rateLimit({
  windowMs: 60 * 1000, // 1 minute
  max: 5, // 5 submissions per minute per IP
  standardHeaders: true,
  legacyHeaders: false,
  message: {
    error: "Too many contact requests. Please try again later.",
  },
  store: createRedisStore("rl:contact:"),
  passOnStoreError: true,
});