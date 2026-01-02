export function UserSnapshotCard({ user }) {
  return (
    <div className="bg-[#161B22] rounded-xl p-6 border border-[#1F2937] hover:border-[#FBBF24]/20 transition-all">
      <div className="flex items-center gap-4 mb-4">
        <img
          src={user?.avatar || 'https://api.dicebear.com/7.x/avataaars/svg?seed=Alex'}
          alt={user?.name}
          className="w-16 h-16 rounded-xl border-2 border-[#FBBF24]"
        />
        <div>
          <h3 className="text-[#E5E7EB] font-bold text-lg font-Spline-Sans">{user?.name || 'Alex Chen'}</h3>
          <p className="text-[#6B7280] text-sm font-JetBrains-Mono">{user?.branch || 'Computer Science'} | {user?.year || '2024'}</p>
        </div>
      </div>

      <div className="grid grid-cols-2 gap-4">
        <div className="bg-[#0D1117] rounded-lg p-4">
          <p className="text-[#6B7280] text-xs mb-1 font-JetBrains-Mono">OVERALL RANK</p>
          <p className="text-[#FBBF24] text-2xl font-bold font-Spline-Sans">#{user?.rank || 42}</p>
        </div>
        <div className="bg-[#0D1117] rounded-lg p-4">
          <p className="text-[#6B7280] text-xs mb-1 font-JetBrains-Mono">POINTS</p>
          <p className="text-[#FBBF24] text-2xl font-bold font-Spline-Sans">{user?.points?.toLocaleString() || '1,850'}</p>
        </div>
      </div>
    </div>
  );
}
