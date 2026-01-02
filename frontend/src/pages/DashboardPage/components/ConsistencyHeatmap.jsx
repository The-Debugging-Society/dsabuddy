export function ConsistencyHeatmap({ data = [] }) {
  const generateDays = () => {
    const days = [];
    const today = new Date();
    for (let i = 364; i >= 0; i--) {
      const date = new Date(today);
      date.setDate(date.getDate() - i);
      const dateString = date.toISOString().split('T')[0];
      const activity = data.find(d => d.date === dateString);
      days.push({
        date: dateString,
        count: activity?.count || 0,
        day: date.getDay(),
      });
    }
    return days;
  };

  const days = generateDays();
  
  const weeks = [];
  for (let i = 0; i < days.length; i += 7) {
    weeks.push(days.slice(i, i + 7));
  }

  const getColor = (count) => {
    if (count === 0) return '#0D1117';
    if (count === 1) return '#1F2937';
    if (count === 2) return '#D97706';
    if (count === 3) return '#FBBF24';
    return '#FCD34D';
  };

  const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
  const dayLabels = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  return (
    <div className="bg-[#161B22] rounded-xl p-6 border border-[#1F2937]">
      <div className="flex items-center justify-between mb-6">
        <div>
          <h3 className="text-[#E5E7EB] font-bold text-lg font-Spline-Sans">Consistency Visualizer</h3>
        </div>
        
        <div className="flex items-center gap-2">
          <span className="text-[#6B7280] text-xs font-JetBrains-Mono">Less</span>
          {[0, 1, 2, 3, 4].map((level) => (
            <div
              key={level}
              className="w-3 h-3 rounded-sm"
              style={{ backgroundColor: getColor(level) }}
            />
          ))}
          <span className="text-[#6B7280] text-xs font-JetBrains-Mono">More</span>
        </div>
      </div>

      <div className="overflow-x-auto scrollbar-thin pb-2">
        <div className="flex gap-1">
          {weeks.map((week, weekIndex) => (
            <div key={weekIndex} className="flex flex-col gap-1">{week.map((day, dayIndex) => (
                <div
                  key={day.date}
                  className="w-3 h-3 rounded-sm transition-all hover:ring-2 hover:ring-[#FBBF24] cursor-pointer"
                  style={{ backgroundColor: getColor(day.count) }}
                  title={`${day.date}: ${day.count} contributions`}
                />
              ))}
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}
