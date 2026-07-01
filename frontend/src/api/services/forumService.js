import apiClient from '../client';

export const forumService = {
  getPosts: (filters = {}) => apiClient.get('/forum/posts', { params: filters }),
  getPost: (id) => apiClient.get(`/forum/posts/${id}`),
  createPost: (data) => apiClient.post('/forum/posts', data),
  updatePost: (id, data) => apiClient.patch(`/forum/posts/${id}`, data),
  votePost: (id, value) => apiClient.post(`/forum/posts/${id}/vote`, { value }),
  upvotePost: (id) => apiClient.post(`/forum/posts/${id}/upvote`, { value: 1 }), // backward compat
  addComment: (id, data) => apiClient.post(`/forum/posts/${id}/comments`, data),
  deletePost: (id) => apiClient.delete(`/forum/posts/${id}`),
  deleteComment: (id) => apiClient.delete(`/forum/comments/${id}`),
};
