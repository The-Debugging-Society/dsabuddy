import { fetchJson, sleep } from "./http.js";
import { mapDifficultyFromCodechefRating } from "./mappers.js";

const CODECHEF_PROBLEMS_LIST_URL = "https://www.codechef.com/api/list/problems";

function parseStars(starsStr) {
  if (!starsStr) return null;
  const str = String(starsStr).trim();
  // If it is a series of stars e.g. "ââââ" or "&#9733;&#9733;"
  const starEntities = (str.match(/&#9733;/g) || []).length;
  const starChars = (str.match(/â/g) || []).length;
  const count = Math.max(starEntities, starChars);
  if (count > 0) return count;

  // If it's a label like "3â" or "3 Star"
  const digitMatch = str.match(/(\d+)\s*(?:â|star)/i);
  if (digitMatch) {
    return parseInt(digitMatch[1], 10);
  }
  return null;
}

function buildCodechefProblemUrl(code) {
  if (!code) return null;
  return `https://www.codechef.com/problems/${code}`;
}

export async function fetchAllCodechefProblems({
  maxItems = 25000,
  pageSize = 200,
  maxPages = 500,
} = {}) {
  const results = [];
  const seenCodes = new Set();
  let page = 1;
  let totalCount = null;

  while (page <= maxPages && results.length < maxItems) {
    await sleep(600);

    const url = `${CODECHEF_PROBLEMS_LIST_URL}?page=${page}&limit=${pageSize}`;
    let json;
    try {
      json = await fetchJson(url, {
        headers: { "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36" },
        timeoutMs: 10000,
      });
    } catch (err) {
      console.warn(`[codechef:local] page=${page} failed: ${err.message}`);
      break;
    }

    if (json?.status !== "success" || !Array.isArray(json?.data)) {
      console.warn(`[codechef:local] page=${page} unexpected response, stopping`);
      break;
    }

    totalCount = typeof json.count === "number" ? json.count : totalCount;
    const items = json.data;

    for (const p of items) {
      if (results.length >= maxItems) break;
      const code = p.code;
      if (!code || seenCodes.has(code)) continue;
      seenCodes.add(code);

      const ratingRaw = p.difficulty_rating != null ? parseInt(p.difficulty_rating, 10) : null;
      const rating = Number.isFinite(ratingRaw) && ratingRaw > 0 ? ratingRaw : null;
      const difficulty = mapDifficultyFromCodechefRating(rating);
      const title = p.name ?? code;
      const url = buildCodechefProblemUrl(code);

      results.push({
        title,
        displayName: title,
        difficulty,
        sourcePlatform: "CODECHEF",
        sourceId: code,
        sourceSlug: code,
        slug: `cc-${code.toLowerCase()}`,
        sourceUrl: url,
        sourceRating: rating,
        paidOnly: false,
        tags: [],
      });
    }

    console.log(
      `[codechef:local] page=${page} fetched=${items.length} collected=${results.length}/${maxItems} total=${totalCount ?? "?"}`,
    );

    if (items.length === 0) break;
    if (totalCount != null && page * pageSize >= totalCount) break;

    page += 1;
  }

  return { problems: results, pages: page };
}

export async function fetchCodechefUserStats({ username }) {
  if (!username) throw new Error("CodeChef username is required");
  const cleanUsername = String(username).trim();

  // Try CodeIndex API first as primary
  try {
    const apiUrl = `https://codeindex.vercel.app/api/codechef?username=${cleanUsername}`;
    const data = await fetchJson(apiUrl, { timeoutMs: 5000 });
    if (data && data.success) {
      return {
        username: data.username || cleanUsername,
        problemsSolved: typeof data.totalSolved === "number" ? data.totalSolved : parseInt(data.totalSolved, 10) || 0,
        rating: typeof data.rating === "number" ? data.rating : parseInt(data.rating, 10) || null,
        stars: parseStars(data.stars),
        rankLabel: data.stars ? `${parseStars(data.stars)} Star` : null,
      };
    }
  } catch (err) {
    console.warn(`CodeIndex API failed for CodeChef user ${cleanUsername}:`, err.message);
  }

  // Fallback: Direct scraping of CodeChef profile page
  try {
    const profileUrl = `https://www.codechef.com/users/${cleanUsername}`;
    const controller = new AbortController();
    const timeoutId = setTimeout(() => controller.abort(), 10000);
    const res = await fetch(profileUrl, {
      signal: controller.signal,
      headers: {
        "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
      }
    });
    clearTimeout(timeoutId);

    if (!res.ok) {
      throw new Error(`CodeChef profile returned HTTP ${res.status}`);
    }

    const html = await res.text();

    const ratingMatch = html.match(/<div class="rating-number">(\d+)<\/div>/);
    const rating = ratingMatch ? parseInt(ratingMatch[1], 10) : null;

    const starsMatch = html.match(/class="rating-star"[^>]*?>([\s\S]*?)<\/span>/i);
    let starsCount = null;
    if (starsMatch) {
      const starText = starsMatch[1];
      const starEntities = (starText.match(/&#9733;/g) || []).length;
      const starChars = (starText.match(/★/g) || []).length;
      starsCount = Math.max(starEntities, starChars);
      if (starsCount === 0 && starText.trim().length > 0) {
        const textMatch = starText.match(/(\d+)\s*★/);
        if (textMatch) starsCount = parseInt(textMatch[1], 10);
      }
    }

    const solvedMatch = html.match(/<h3>Total Problems Solved:\s*(\d+)<\/h3>/i) || html.match(/Total Problems Solved:\s*(\d+)/i);
    const solved = solvedMatch ? parseInt(solvedMatch[1], 10) : null;

    if (rating === null && solved === null) {
      throw new Error(`Scraper failed to extract CodeChef metrics for user '${cleanUsername}'`);
    }

    return {
      username: cleanUsername,
      problemsSolved: solved || 0,
      rating,
      stars: starsCount,
      rankLabel: starsCount ? `${starsCount} Star` : null,
    };
  } catch (error) {
    console.error("Error fetching CodeChef stats:", error);
    throw error;
  }
}