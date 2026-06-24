import axios from 'axios';

const API = axios.create({
  baseURL: import.meta.env.VITE_API_BASE_URL || 'http://localhost:5000/api', // Adjust as per your backend URL
  withCredentials: true, // This is important for sending cookies (like session cookies)
});

API.interceptors.request.use((config) => {
  config.withCredentials = true;
  return config;
});

export default API;
