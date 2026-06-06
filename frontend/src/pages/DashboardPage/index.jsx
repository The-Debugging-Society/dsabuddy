import { useState, useEffect } from 'react';
import { Sidebar, Topbar } from './components';
import { Dashboard } from './Dashboard';
import { Analytics } from './Analytics';
import { PYQs } from './PYQs';
import { Leaderboard } from './Leaderboard';
import { Settings } from './Settings';
import { QuestionView } from './QuestionView';
import { userData } from './userData';

export function DashboardPage() {
  const [activeSection, setActiveSection] = useState('dashboard');
  const [user, setUser] = useState(userData);
  const [platforms, setPlatforms] = useState([]);

  useEffect(() => {
    const params = new URLSearchParams(window.location.search);
    const token = params.get('token');
    
    if (token) {
      localStorage.setItem('token', token);
      window.history.replaceState({}, document.title, window.location.pathname);
    }

    const fetchData = async () => {
      try {
        const token = localStorage.getItem('token');
        if (!token) return;
        
        const headers = { Authorization: `Bearer ${token}` };
        const [userRes, platRes] = await Promise.all([
          fetch('http://localhost:5000/api/users/me', { headers }),
          fetch('http://localhost:5000/api/platform-connections', { headers })
        ]);

        if (userRes.ok) setUser(await userRes.json());
        if (platRes.ok) setPlatforms(await platRes.json());
      } catch (e) {
        console.error("Failed to fetch dashboard data", e);
      }
    };
    
    fetchData();
  }, []);

  const renderSection = () => {
    switch (activeSection) {
      case 'dashboard':
        return <Dashboard user={user} platforms={platforms} />;
      case 'problems':
        return <QuestionView />;
      case 'analytics':
        return <Analytics />;
      case 'pyqs':
        return <PYQs />;
      case 'leaderboard':
        return <Leaderboard />;
      case 'settings':
        return <Settings />;
      default:
        return <Dashboard user={user} platforms={platforms} />;
    }
  };

  return (
    <div className="flex min-h-screen bg-[#0D1117]">
      <Sidebar activeSection={activeSection} onSectionChange={setActiveSection} />
      
      <div className="flex-1 ml-20 flex flex-col h-screen overflow-hidden">
        <Topbar user={user} onSectionChange={setActiveSection} />
        
        <main className="flex-1 overflow-y-auto p-8">
          <div className="max-w-7xl mx-auto">
            {renderSection()}
          </div>
        </main>
      </div>
    </div>
  );
}