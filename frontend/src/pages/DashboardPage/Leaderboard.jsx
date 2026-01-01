import { useState } from 'react';
import { LeaderboardRow } from './components';
import { leaderboardData, userData, leaderboardFilters } from './userData';
import { Trophy, TrendingUp } from 'lucide-react';

export function Leaderboard() {
  const [activeFilter, setActiveFilter] = useState('college');

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-[#E5E7EB] text-4xl font-bold mb-2 font-Spline-Sans flex items-center gap-3">
          <Trophy className="w-10 h-10 text-[#FBBF24]" />
          Leaderboard
        </h1>
        <p className="text-[#9CA3AF] font-JetBrains-Mono">See how you rank against your peers</p>
      </div>


      <div className="bg-gradient-to-br from-[#FBBF24]/10 to-[#D97706]/5 rounded-xl p-6 border border-[#FBBF24]/20">
        <div className="flex items-center justify-between">
          <div>
            <p className="text-[#6B7280] text-sm mb-1 font-JetBrains-Mono">YOUR POSITION</p>
            <h2 className="text-[#FBBF24] text-5xl font-bold font-Spline-Sans">#{userData.rank}</h2>
          </div>
          <div className="text-right">
            <p className="text-[#6B7280] text-sm mb-1 font-JetBrains-Mono">TOTAL POINTS</p>
            <h3 className="text-[#E5E7EB] text-3xl font-bold font-Spline-Sans">{userData.points.toLocaleString()}</h3>
            <div className="flex items-center gap-1 text-[#10B981] text-sm mt-1">
              <TrendingUp className="w-4 h-4" />
              <span className="font-JetBrains-Mono">+2 this week</span>
            </div>
          </div>
        </div>
      </div>

      <div className="bg-[#161B22] rounded-xl p-6 border border-[#1F2937]">
        <div className="flex items-center justify-between mb-6">
          <div className="flex gap-2">
            {leaderboardFilters.map((filter) => (
              <button
                key={filter.id}
                onClick={() => setActiveFilter(filter.id)}
                className={`px-4 py-2 rounded-lg text-sm font-JetBrains-Mono transition-colors ${
                  activeFilter === filter.id
                    ? 'bg-[#FBBF24] text-[#0D1117]'
                    : 'bg-[#0D1117] text-[#9CA3AF] hover:text-[#E5E7EB]'
                }`}
              >
                {filter.label}
              </button>
            ))}
          </div>
          <button className="text-[#9CA3AF] hover:text-[#FBBF24] text-sm font-JetBrains-Mono transition-colors">
            View All →
          </button>
        </div>


        <div className="space-y-3 max-h-[600px] overflow-y-auto pr-2">
          {leaderboardData.map((user) => (
            <LeaderboardRow
              key={user.id}
              user={user}
              rank={user.rank}
              isCurrentUser={user.name === userData.name}
            />
          ))}
        </div>
      </div>
    </div>
  );
}
