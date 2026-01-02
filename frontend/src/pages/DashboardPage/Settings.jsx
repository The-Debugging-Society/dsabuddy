import { Settings as SettingsIcon, User, Link2 } from 'lucide-react';
import { settingSections } from './userData';

const iconMap = {
  user: User,
  link: Link2,
};

export function Settings() {

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-[#E5E7EB] text-4xl font-bold mb-2 font-Spline-Sans flex items-center gap-3">
          <SettingsIcon className="w-10 h-10 text-[#FBBF24]" />
          Settings
        </h1>
        <p className="text-[#9CA3AF] font-JetBrains-Mono">Manage your account and preferences</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        {settingSections.map((section) => {
          const Icon = iconMap[section.icon];
          return (
            <div key={section.title} className="bg-[#161B22] rounded-xl p-6 border border-[#1F2937] hover:border-[#FBBF24]/20 transition-all">
              <div className="flex items-start gap-4 mb-4">
                <div className="w-12 h-12 bg-[#FBBF24]/10 rounded-lg flex items-center justify-center">
                  <Icon className="w-6 h-6 text-[#FBBF24]" />
                </div>
                <div className="flex-1">
                  <h3 className="text-[#E5E7EB] font-bold text-lg font-Spline-Sans mb-1">{section.title}</h3>
                  <p className="text-[#6B7280] text-sm font-JetBrains-Mono">{section.description}</p>
                </div>
              </div>
              <ul className="space-y-2">
                {section.items.map((item) => (
                  <li key={item} className="flex items-center justify-between py-2 border-t border-[#1F2937] first:border-0">
                    <span className="text-[#9CA3AF] text-sm font-JetBrains-Mono">{item}</span>
                    <button className="text-[#FBBF24] hover:text-[#D97706] text-sm font-JetBrains-Mono transition-colors">
                      Configure →
                    </button>
                  </li>
                ))}
              </ul>
            </div>
          );
        })}
      </div>
    </div>
  );
}
