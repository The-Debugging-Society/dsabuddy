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
  const [selectedQuestionSlug, setSelectedQuestionSlug] = useState('two-sum');
  const [user, setUser] = useState(userData);
  const [platforms, setPlatforms] = useState([]);
  const [analytics, setAnalytics] = useState(null);
  const [companies, setCompanies] = useState([]);

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
        const [userRes, platRes, analyticsRes, compRes] = await Promise.all([
          fetch('http://localhost:5000/api/users/me', { headers }),
          fetch('http://localhost:5000/api/platform-connections', { headers }),
          fetch('http://localhost:5000/api/daily-activity/analytics', { headers }),
          fetch('http://localhost:5000/api/companies', { headers })
        ]);

        if (userRes.ok) setUser(await userRes.json());
        if (platRes.ok) setPlatforms(await platRes.json());
        if (analyticsRes.ok) setAnalytics(await analyticsRes.json());
        if (compRes.ok) setCompanies(await compRes.json());
      } catch (e) {
        console.error("Failed to fetch dashboard data", e);
      }
    };
    
    fetchData();
  }, []);

  const handleSelectQuestion = (slug) => {
    setSelectedQuestionSlug(slug);
    setActiveSection('problems');
  };

  const renderSection = () => {
    switch (activeSection) {
      case 'dashboard':
        return <Dashboard user={user} platforms={platforms} analytics={analytics} />;
      case 'problems':
        return <QuestionView titleSlug={selectedQuestionSlug} />;
      case 'analytics':
        return <Analytics analytics={analytics} />;
      case 'pyqs':
        return <PYQs companies={companies} onSelectQuestion={handleSelectQuestion} />;
      case 'leaderboard':
        return <Leaderboard />;
      case 'settings':
        return <Settings platforms={platforms} />;
      default:
        return <Dashboard user={user} platforms={platforms} analytics={analytics} />;
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