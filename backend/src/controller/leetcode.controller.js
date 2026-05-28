import { leetcodeGraphqlRequest, buildLeetCodeCookiesFromEnv, fetchLeetCodeUserStats } from "../ingestion/leetcode.js";

const USER_PROFILE_QUERY = `
query getUserProfile($username: String!) {
  matchedUser(username: $username) {
    username
    profile { ranking reputation starRating }
    submitStats {
      acSubmissionNum { difficulty count }
      totalSubmissionNum { difficulty count }
    }
  }
}`;

const QUESTION_DATA_QUERY = `
query questionData($titleSlug: String!) {
  question(titleSlug: $titleSlug) {
    questionId
    questionFrontendId
    title
    titleSlug
    content
    isPaidOnly
    difficulty
    likes
    dislikes
    topicTags { name slug }
    stats
    hints
  }
}`;

export const getLeetcodeUser = async (req, res) => {
  try {
    const { username } = req.params;
    const cookies = buildLeetCodeCookiesFromEnv();

    const data = await leetcodeGraphqlRequest({
      query: USER_PROFILE_QUERY,
      variables: { username },
      cookies,
    });

    if (!data?.matchedUser) {
      return res.status(404).json({ error: "User not found" });
    }

    return res.status(200).json(data.matchedUser);
  } catch (error) {
    console.error("Error in getLeetcodeUser:", error.message);
    return res.status(500).json({ error: "Failed to fetch user data.", details: error.message });
  }
};

export const getLeetcodeQuestion = async (req, res) => {
  try {
    const { titleSlug } = req.params;
    const cookies = buildLeetCodeCookiesFromEnv();

    const data = await leetcodeGraphqlRequest({
      query: QUESTION_DATA_QUERY,
      variables: { titleSlug },
      cookies,
    });

    if (!data?.question) {
      return res.status(404).json({ error: "Question not found" });
    }

    let stats = data.question.stats;
    try {
      if (stats) stats = JSON.parse(stats);
    } catch (e) { }

    return res.status(200).json({
      ...data.question,
      stats
    });
  } catch (error) {
    console.error("Error in getLeetcodeQuestion:", error.message);
    return res.status(500).json({ error: "Failed to fetch question data.", details: error.message });
  }
};

