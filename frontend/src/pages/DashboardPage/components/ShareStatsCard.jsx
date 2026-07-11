import { useState } from 'react';
import { Trophy, Zap, Share2, Link2, Check } from 'lucide-react';
import { getInitials } from './LeaderboardRow';
import { absoluteUrl } from '@/config/seo';

// Small inline brand glyphs (no extra deps)
const XIcon = (props) => (
  <svg viewBox="0 0 24 24" fill="currentColor" {...props}>
    <path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24h-6.66l-5.214-6.817L4.99 21.75H1.68l7.73-8.835L1.254 2.25H8.08l4.713 6.231 5.45-6.231Zm-1.161 17.52h1.833L7.084 4.126H5.117L17.083 19.77Z" />
  </svg>
);
const LinkedInIcon = (props) => (
  <svg viewBox="0 0 24 24" fill="currentColor" {...props}>
    <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286ZM5.337 7.433a2.062 2.062 0 0 1-2.063-2.065 2.064 2.064 0 1 1 2.063 2.065Zm1.782 13.019H3.555V9h3.564v11.452ZM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.225 0Z" />
  </svg>
);
const WhatsAppIcon = (props) => (
  <svg viewBox="0 0 24 24" fill="currentColor" {...props}>
    <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51l-.57-.01c-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.71.306 1.263.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 0 1-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 0 1-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 0 1 2.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0 0 12.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 0 0 5.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 0 0-3.48-8.413Z" />
  </svg>
);

export function ShareStatsCard({ user, activeRank, activeFilter }) {
  const [copied, setCopied] = useState(false);
  const [imgError, setImgError] = useState(false);

  if (!user) return null;

  const avatarUrl = user.avatarUrl || user.avatar;
  const showInitials = imgError || !avatarUrl;

  const displayRank = activeRank !== undefined
    ? (activeRank === '-' || activeRank === '—' ? '—' : `#${activeRank}`)
    : (user.overallRank ? `#${user.overallRank}` : '—');
  const points = typeof user.points === 'number' ? user.points.toLocaleString() : String(user.points ?? 0);

  const profileUrl = absoluteUrl(`/profile/${user.userName}`);
  
  let cohortText = '';
  if (activeFilter === 'college') cohortText = ' in my college cohort';
  else if (activeFilter === 'branch') cohortText = ' in my branch cohort';
  else if (activeFilter === 'year') cohortText = ' in my year cohort';
  else if (activeFilter === 'class') cohortText = ' in my class cohort';

  const shareText = displayRank !== '—'
    ? `I'm ranked ${displayRank}${cohortText} with ${points} DSA points on DSABuddy! Track your competitive programming progress across LeetCode, Codeforces, CodeChef & GFG.`
    : `Track my competitive programming progress on DSABuddy!`;

  const rankNum = displayRank !== '—' ? parseInt(displayRank.slice(1), 10) : null;
  const tier =
    rankNum === null
      ? null
      : rankNum <= 10
      ? { label: 'Top 10', color: '#F5B14C' }
      : rankNum <= 50
      ? { label: 'Top 50', color: '#35b9f1' }
      : { label: 'Ranked', color: '#10B981' };

  const shareTargets = [
    {
      name: 'X',
      Icon: XIcon,
      className: 'hover:bg-white/10 hover:text-white',
      url: `https://twitter.com/intent/tweet?text=${encodeURIComponent(shareText)}&url=${encodeURIComponent(profileUrl)}`,
    },
    {
      name: 'LinkedIn',
      Icon: LinkedInIcon,
      className: 'hover:bg-[#0A66C2]/20 hover:text-[#0A66C2]',
      url: `https://www.linkedin.com/sharing/share-offsite/?url=${encodeURIComponent(profileUrl)}`,
    },
    {
      name: 'WhatsApp',
      Icon: WhatsAppIcon,
      className: 'hover:bg-[#25D366]/20 hover:text-[#25D366]',
      url: `https://wa.me/?text=${encodeURIComponent(`${shareText} ${profileUrl}`)}`,
    },
  ];

  const handleShare = (url) => {
    window.open(url, '_blank', 'noopener,noreferrer');
  };

  const handleCopy = async () => {
    try {
      await navigator.clipboard.writeText(profileUrl);
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    } catch (e) {
      console.error('Copy failed:', e);
    }
  };

  return (
    <div className="rounded-2xl border border-[#1F2937] bg-gradient-to-b from-[#161B22] to-[#0D1117] p-5 space-y-5">
      <div className="flex items-center gap-2 text-[#9CA3AF]">
        <Share2 className="w-4 h-4 text-[#35b9f1]" />
        <span className="text-xs font-mono uppercase tracking-wider">Share your stats</span>
      </div>

      {/* Shareable stat card preview */}
      <div className="rounded-xl border border-[#1F2937] bg-[#0D1117] overflow-hidden">
        {/* Header strip */}
        <div className="flex items-center justify-between px-4 py-2.5 border-b border-[#1F2937]">
          <div className="flex items-center gap-1.5 text-[#9CA3AF]">
            <Trophy className="w-3.5 h-3.5 text-[#35b9f1]" />
            <span className="text-[10px] font-mono uppercase tracking-wider">DSABuddy</span>
          </div>
          {tier && (
            <span
              className="text-[10px] font-mono uppercase tracking-wider font-semibold"
              style={{ color: tier.color }}
            >
              {displayRank} · {tier.label}
            </span>
          )}
        </div>

        {/* Hero banner with spotlighted avatar */}
        <div className="relative h-32 overflow-hidden bg-[#0B0F16]">
          <div
            className="absolute inset-0"
            style={{
              background:
                'radial-gradient(circle at 50% 0%, rgba(53,185,241,0.28), rgba(13,17,23,0) 65%)',
            }}
          />
          <div className="absolute inset-x-0 bottom-0 h-16 bg-gradient-to-t from-[#0D1117] to-transparent" />
          <div className="absolute inset-0 flex items-center justify-center">
            {showInitials ? (
              <div className="w-16 h-16 rounded-full flex items-center justify-center bg-[#161B22] border-2 border-[#35b9f1]/60 text-[#35b9f1] font-bold text-lg select-none shadow-[0_0_24px_rgba(53,185,241,0.35)]">
                {getInitials(user.name)}
              </div>
            ) : (
              <img
                src={avatarUrl}
                alt={user.name}
                onError={() => setImgError(true)}
                className="w-16 h-16 rounded-full object-cover border-2 border-[#35b9f1]/60 shadow-[0_0_24px_rgba(53,185,241,0.35)]"
              />
            )}
          </div>
        </div>

        {/* Identity + headline stat */}
        <div className="px-4 pt-3 pb-4">
          <div className="flex items-center justify-between gap-2">
            <div className="min-w-0">
              <p className="text-white font-semibold text-sm truncate">{user.name}</p>
              {user.userName && (
                <p className="text-[#6B7280] text-xs font-mono truncate">@{user.userName}</p>
              )}
            </div>
            <div className="text-right shrink-0">
              <div className="flex items-center justify-end gap-1 text-[#6B7280] text-[10px] font-mono uppercase tracking-wider">
                <Zap className="w-3 h-3 text-[#10B981]" />
                Points
              </div>
              <p className="text-[#35b9f1] text-2xl font-bold leading-tight tabular-nums">{points}</p>
            </div>
          </div>
        </div>

        {/* Footer strip */}
        <div className="flex items-center justify-between px-4 py-2.5 border-t border-[#1F2937] bg-[#0B0F16]">
          <span className="text-[#6B7280] text-[10px] font-mono truncate">{profileUrl.replace(/^https?:\/\//, '')}</span>
          <span className="text-[#9CA3AF] text-[10px] font-mono uppercase tracking-wider shrink-0">
            {activeFilter && activeFilter !== 'all' ? `${activeFilter} rank` : 'rank'} {displayRank}
          </span>
        </div>
      </div>


      {/* Share buttons */}
      <div className="flex items-center gap-2">
        {shareTargets.map((target) => {
          const Icon = target.Icon;
          return (
            <button
              key={target.name}
              onClick={() => handleShare(target.url)}
              title={`Share on ${target.name}`}
              aria-label={`Share on ${target.name}`}
              className={`flex-1 h-10 rounded-lg border border-[#1F2937] bg-[#161B22] text-[#9CA3AF] flex items-center justify-center transition-colors cursor-pointer ${target.className}`}
            >
              <Icon className="w-4 h-4" />
            </button>
          );
        })}
      </div>

      <button
        onClick={handleCopy}
        className="w-full h-10 rounded-lg border border-[#1F2937] bg-[#161B22] text-[#9CA3AF] hover:text-white hover:border-[#35b9f1]/40 flex items-center justify-center gap-2 text-xs font-mono transition-colors cursor-pointer"
      >
        {copied ? (
          <>
            <Check className="w-4 h-4 text-[#10B981]" />
            Link copied!
          </>
        ) : (
          <>
            <Link2 className="w-4 h-4" />
            Copy profile link
          </>
        )}
      </button>
    </div>
  );
}
