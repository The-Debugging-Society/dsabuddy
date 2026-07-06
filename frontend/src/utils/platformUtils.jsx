import leetcodeLogo from '@/assets/leetcode.png';
import gfgLogo from '@/assets/gfg.png';
import codeforcesLogo from '@/assets/codeforces.png';
import codechefLogo from '@/assets/codechef.png';

export const PLATFORMS = {
  leetcode: {
    name: 'LeetCode',
    color: '#FFA116',
    bg: 'bg-[#FFA116]/10',
    border: 'border-[#FFA116]/30',
    Icon: ({ className = 'w-4 h-4' }) => (
      <img src={leetcodeLogo} alt="LeetCode" className={`${className} object-contain`} />
    ),
  },
  gfg: {
    name: 'GeeksforGeeks',
    color: '#2F8D46',
    bg: 'bg-[#2F8D46]/10',
    border: 'border-[#2F8D46]/30',
    Icon: ({ className = 'w-4 h-4' }) => (
      <img src={gfgLogo} alt="GeeksforGeeks" className={`${className} object-contain`} />
    ),
  },
  codeforces: {
    name: 'Codeforces',
    color: '#1F8ACB',
    bg: 'bg-[#1F8ACB]/10',
    border: 'border-[#1F8ACB]/30',
    Icon: ({ className = 'w-4 h-4' }) => (
      <img src={codeforcesLogo} alt="Codeforces" className={`${className} object-contain`} />
    ),
  },
  codechef: {
    name: 'CodeChef',
    color: '#B45309',
    bg: 'bg-[#B45309]/10',
    border: 'border-[#B45309]/30',
    Icon: ({ className = 'w-4 h-4' }) => (
      <img src={codechefLogo} alt="CodeChef" className={`${className} object-contain`} />
    ),
  },
  other: {
    name: 'Problem',
    color: '#6B7280',
    bg: 'bg-neutral-800',
    border: 'border-neutral-700',
    Icon: ({ className = 'w-4 h-4' }) => (
      <svg className={className} viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4" stroke="#6B7280" strokeWidth="2" strokeLinecap="round" />
        <path d="M14 4h6v6M20 4l-10 10" stroke="#6B7280" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" />
      </svg>
    ),
  },
};

export function getPlatformFromUrl(url) {
  if (!url) return null;
  const u = url.toLowerCase();
  if (u.includes('leetcode.com')) return 'leetcode';
  if (u.includes('geeksforgeeks.org') || u.includes('practice.geeks')) return 'gfg';
  if (u.includes('codeforces.com')) return 'codeforces';
  if (u.includes('codechef.com')) return 'codechef';
  return 'other';
}

export function PlatformIcon({ url, className = 'w-4 h-4' }) {
  const key = getPlatformFromUrl(url);
  if (!key) return null;
  const platform = PLATFORMS[key];
  if (!platform) return null;
  return <platform.Icon className={className} />;
}
