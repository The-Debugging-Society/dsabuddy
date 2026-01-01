export function LeaderboardRow({ user, rank, isCurrentUser }) {
  const getRankBadge = (rank) => {
    if (rank === 1) return '🥇';
    if (rank === 2) return '🥈';
    if (rank === 3) return '🥉';
    return `#${rank}`;
  };

  const rankColor = rank <= 3 ? '#FBBF24' : '#6B7280';

  return (
    <div 
      className={`
        flex items-center justify-between p-4 rounded-lg transition-all
        ${isCurrentUser 
          ? 'bg-[#FBBF24]/10 border-2 border-[#FBBF24]' 
          : 'bg-[#161B22] border border-[#1F2937] hover:border-[#FBBF24]/20'
        }
      `}
    >
      <div className="flex items-center gap-4 flex-1">
        <div 
          className="w-12 h-12 rounded-lg flex items-center justify-center font-bold text-lg font-Spline-Sans"
          style={{ 
            color: rankColor,
            backgroundColor: rank <= 3 ? `${rankColor}20` : '#0D1117'
          }}
        >
          {getRankBadge(rank)}
        </div>

        <img
          src={user?.avatar || `https://api.dicebear.com/7.x/avataaars/svg?seed=${user?.name}`}
          alt={user?.name}
          className="w-10 h-10 rounded-full"
        />
        <div>
          <p className="text-[#E5E7EB] font-medium font-Spline-Sans">
            {user?.name}
            {isCurrentUser && <span className="ml-2 text-[#FBBF24] text-sm font-JetBrains-Mono">(You)</span>}
          </p>
          <p className="text-[#6B7280] text-sm font-JetBrains-Mono">{user?.branch || 'Computer Science'}</p>
        </div>
      </div>

      <div className="text-right">
        <p className="text-[#FBBF24] text-xl font-bold font-Spline-Sans">{user?.points?.toLocaleString() || '0'}</p>
        <p className="text-[#6B7280] text-xs font-JetBrains-Mono">points</p>
      </div>
    </div>
  );
}
