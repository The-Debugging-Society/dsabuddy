/**
 * THIS IS AI GENERATED FILE 
 * User Data for Dashboard
 * 
 * Backend Integration Notes:
 * - Replace these with actual API calls
 * - User data: GET /api/user/profile
 * - Streak data: GET /api/user/streak
 * - Platform data: GET /api/platforms (returns array of connected platforms)
 * - Leaderboard: GET /api/leaderboard?filter=college|branch|year
 * - Activity: GET /api/user/activity?range=weekly|yearly
 */

export const userData = {
  id: 'user_001',
  name: 'Alex Chen',
  email: 'alex.chen@university.edu',
  avatar: 'https://api.dicebear.com/7.x/avataaars/svg?seed=Alex',
  branch: 'Computer Science',
  year: '2024',
  rank: 42,
  points: 1850,
  role: 'CS - 2024',
};

export const streakData = {
  current: 12,
  best: 15,
  remainingDays: 3,
  lastActive: new Date().toISOString(),
};

export const platformsData = [
  {
    id: 'leetcode',
    name: 'LeetCode',
    username: 'alexcode23',
    rating: 1642,
    problemsSolved: 342,
    rank: 'Knight',
    synced: true,
    logo: null, // Can add actual logo URLs
  },
  {
    id: 'codechef',
    name: 'CodeChef',
    username: 'chef_alex',
    rating: 1450,
    stars: 2,
    problemsSolved: 156,
    synced: true,
    logo: null,
  },
  {
    id: 'codeforces',
    name: 'Codeforces',
    username: 'alexcoder',
    rating: 1100,
    problemsSolved: 89,
    rank: 'Newbie',
    synced: false,
    logo: null,
  },
  {
    id: 'gfg',
    name: 'GFG',
    username: 'alex_gfg',
    rating: 450,
    problemsSolved: 120,
    rank: null,
    synced: true,
    logo: null,
  },
];

export const leaderboardData = [
  {
    id: 1,
    name: 'Sarah Johnson',
    avatar: 'https://api.dicebear.com/7.x/avataaars/svg?seed=Sarah',
    branch: 'Computer Science',
    year: '2024',
    points: 2450,
    rank: 1,
  },
  {
    id: 2,
    name: 'Michael Zhang',
    avatar: 'https://api.dicebear.com/7.x/avataaars/svg?seed=Michael',
    branch: 'Computer Science',
    year: '2024',
    points: 2180,
    rank: 2,
  },
  {
    id: 3,
    name: 'Priya Sharma',
    avatar: 'https://api.dicebear.com/7.x/avataaars/svg?seed=Priya',
    branch: 'Computer Science',
    year: '2024',
    points: 1920,
    rank: 3,
  },
  {
    id: 40,
    name: 'Marcus Brown',
    avatar: 'https://api.dicebear.com/7.x/avataaars/svg?seed=Marcus',
    branch: 'Computer Science',
    year: '2024',
    points: 1905,
    rank: 40,
  },
  {
    id: 41,
    name: 'David Kim',
    avatar: 'https://api.dicebear.com/7.x/avataaars/svg?seed=David',
    branch: 'Information Technology',
    year: '2024',
    points: 1880,
    rank: 41,
  },
  {
    id: 42,
    name: 'Alex Chen', // Current user
    avatar: 'https://api.dicebear.com/7.x/avataaars/svg?seed=Alex',
    branch: 'Computer Science',
    year: '2024',
    points: 1850,
    rank: 42,
  },
  {
    id: 43,
    name: 'Emily Rodriguez',
    avatar: 'https://api.dicebear.com/7.x/avataaars/svg?seed=Emily',
    branch: 'Computer Science',
    year: '2025',
    points: 1820,
    rank: 43,
  },
  {
    id: 44,
    name: 'Ryan Lee',
    avatar: 'https://api.dicebear.com/7.x/avataaars/svg?seed=Ryan',
    branch: 'Electronics',
    year: '2024',
    points: 1790,
    rank: 44,
  },
];

export const yearlyActivityData = (() => {
  const data = [];
  const today = new Date();
  const pattern = [0, 1, 2, 1, 3, 2, 4, 3, 2, 1, 0, 1, 2, 3];
  
  for (let i = 364; i >= 0; i--) {
    const date = new Date(today);
    date.setDate(date.getDate() - i);
    data.push({
      date: date.toISOString().split('T')[0],
      count: pattern[i % pattern.length],
    });
  }
  return data;
})();

export const leaderboardFilters = [
  { id: 'college', label: 'College' },
  { id: 'branch', label: 'Branch' },
  { id: 'year', label: 'Year' },
];

export const settingSections = [
  {
    id: 'profile',
    icon: 'user',
    title: 'Profile Settings',
    description: 'Update your personal information',
    items: ['Name', 'Email', 'Avatar', 'Branch & Year'],
  },
  {
    id: 'platforms',
    icon: 'link',
    title: 'Connected Platforms',
    description: 'Manage your coding platform connections',
    items: ['LeetCode', 'CodeChef', 'Codeforces', 'GeeksForGeeks'],
  },
];

export const analyticsStats = [
  { label: 'Avg. Daily Problems', value: '4.2', color: '#10B981' },
  { label: 'Active Days', value: '287', color: '#FBBF24' },
  { label: 'Total Solved', value: '1,234', color: '#3B82F6' },
  { label: 'Best Streak', value: '45', color: '#F59E0B' },
];
