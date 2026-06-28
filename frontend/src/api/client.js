import axios from 'axios';
import { API_BASE_URL } from '@/config/constants';
import { useUserStore } from '@/store/useUserStore';

const apiClient = axios.create({
  baseURL: API_BASE_URL,
  timeout: 10000,
  headers: {
    'Content-Type': 'application/json',
  },
  withCredentials: true,
});

// Response interceptor
apiClient.interceptors.response.use(
  (response) => response.data,
  (error) => {
    if (error.response?.status === 401) {
      useUserStore.getState().setUser(null);
      localStorage.removeItem('dsabuddy_dashboard_cache');
      window.location.href = '/login';
    }
    return Promise.reject(error);
  }
);

export default apiClient;
