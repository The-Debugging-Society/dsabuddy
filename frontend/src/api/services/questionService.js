import apiClient from '../client';

export const questionService = {
  list: (params) => apiClient.get('/questions', { params }),
  getById: (id) => apiClient.get(`/questions/${id}`),
  // "Last minute revision" — random set of questions (default 100)
  getRevision: (limit = 100) => apiClient.get('/questions/revision', { params: { limit } }),
  // Per-user solve status (backed by the user-questions endpoint)
  setStatus: (questionId, status) =>
    apiClient.put(`/user-questions/${questionId}`, { status }),
};
