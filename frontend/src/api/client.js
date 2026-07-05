import axios from 'axios';
import { API_BASE_URL } from '@/config/constants';
import { useUserStore } from '@/store/useUserStore';
import mockSheetsList from './mock_sheets_list.json';
import mockStriverDetail from './mock_striver_detail.json';

const apiClient = axios.create({
  baseURL: API_BASE_URL,
  timeout: 10000,
  headers: {
    'Content-Type': 'application/json',
  },
  withCredentials: true,
});

const MOCK_COMPANIES = [
  { name: "Google", questionCount: 15, placements: [{ eligibleBranches: ["cs", "it"], minCgpa: 8.0 }] },
  { name: "Amazon", questionCount: 24, placements: [{ eligibleBranches: ["cs", "it", "ece"], minCgpa: 7.5 }] },
  { name: "Microsoft", questionCount: 18, placements: [{ eligibleBranches: ["cs", "it"], minCgpa: 8.0 }] },
  { name: "Meta", questionCount: 12, placements: [{ eligibleBranches: ["cs", "it"], minCgpa: 8.0 }] },
  { name: "Netflix", questionCount: 8, placements: [{ eligibleBranches: ["cs"], minCgpa: 8.5 }] },
  { name: "Apple", questionCount: 10, placements: [{ eligibleBranches: ["cs", "it", "ece"], minCgpa: 8.0 }] },
  { name: "Adobe", questionCount: 14, placements: [{ eligibleBranches: ["cs", "it"], minCgpa: 7.5 }] },
  { name: "Uber", questionCount: 16, placements: [{ eligibleBranches: ["cs", "it"], minCgpa: 8.0 }] },
  { name: "Goldman Sachs", questionCount: 20, placements: [{ eligibleBranches: ["cs", "it", "mac"], minCgpa: 8.0 }] },
  { name: "Salesforce", questionCount: 11, placements: [{ eligibleBranches: ["cs", "it"], minCgpa: 7.5 }] },
  { name: "Twitter", questionCount: 9, placements: [{ eligibleBranches: ["cs", "it"], minCgpa: 7.5 }] },
  { name: "Stripe", questionCount: 7, placements: [{ eligibleBranches: ["cs", "it"], minCgpa: 8.0 }] },
  { name: "Airbnb", questionCount: 6, placements: [{ eligibleBranches: ["cs", "it"], minCgpa: 8.0 }] },
  { name: "Coinbase", questionCount: 5, placements: [{ eligibleBranches: ["cs", "it"], minCgpa: 8.0 }] },
  { name: "Oracle", questionCount: 13, placements: [{ eligibleBranches: ["cs", "it", "ece"], minCgpa: 7.0 }] },
];

apiClient.interceptors.request.use((config) => {
  const url = config.url || '';
  if (
    import.meta.env.DEV &&
    (url.startsWith('/auth/me') ||
     url.startsWith('/auth/login') ||
     url.startsWith('/auth/signup') ||
     url.startsWith('/companies') ||
     url.startsWith('/platform-connections') ||
     url.startsWith('/daily-activity/analytics') ||
     url.startsWith('/sheets'))
  ) {
    config.adapter = async () => {
      let data = {};
      if (url.startsWith('/auth/me') || url.startsWith('/auth/login') || url.startsWith('/auth/signup')) {
        data = { user: { id: '1', name: 'Test User', userName: 'testuser', email: 'test@nsut.ac.in', branch: 'cs', year: '2024' } };
      } else if (url === '/companies') {
        data = MOCK_COMPANIES;
      } else if (url.startsWith('/companies/')) {
        const companyName = url.split('/')[2];
        if (url.endsWith('/questions')) {
          data = { questions: [] };
        } else {
          data = MOCK_COMPANIES.find(c => c.name.toLowerCase() === companyName.toLowerCase()) || MOCK_COMPANIES[0];
        }
      } else if (url.startsWith('/platform-connections')) {
        data = [];
      } else if (url.startsWith('/daily-activity/analytics')) {
        data = { dailyActivity: [], streak: 0, stats: { totalSolved: 0 } };
      } else if (url === '/sheets') {
        data = mockSheetsList;
      } else if (url.startsWith('/sheets/problems/') && url.endsWith('/progress')) {
        const payload = config.data ? (typeof config.data === 'string' ? JSON.parse(config.data) : config.data) : {};
        data = {
          progress: {
            sheetProblemId: url.split('/')[3],
            status: payload.status ?? "UNSOLVED",
            starred: payload.starred ?? false,
            note: payload.note ?? null,
            solvedAt: payload.status === "SOLVED" ? new Date().toISOString() : null,
          }
        };
      } else if (url.startsWith('/sheets/')) {
        const slug = url.split('/')[2];
        if (slug === 'strivers-a2z-dsa-sheet') {
          data = mockStriverDetail;
        } else {
          data = {
            sheet: {
              id: "leetcode_75_sheet_id",
              slug: "leetcode-75",
              name: "LeetCode 75",
              description: "Ace your coding interview with 75 essential LeetCode questions.",
              author: "LeetCode",
              totalProblems: 75,
              solvedCount: 0,
              sections: []
            }
          };
        }
      }
      return {
        data,
        status: 200,
        statusText: 'OK',
        headers: {},
        config,
      };
    };
  }
  return config;
});

// Response interceptor
apiClient.interceptors.response.use(
  (response) => response.data,
  (error) => {
    if (error.response?.status === 401) {
      useUserStore.getState().setUser(null);
      localStorage.removeItem('dsabuddy_dashboard_cache');
      
      const isPublicPath = 
        window.location.pathname === '/' || 
        window.location.pathname.startsWith('/about') || 
        window.location.pathname.startsWith('/profile');
        
      if (!isPublicPath) {
        window.location.href = '/login';
      }
    }
    return Promise.reject(error);
  }
);

export default apiClient;
