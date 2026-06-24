import { lazy, Suspense } from 'react'
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom'
import { ROUTES } from './config/constants'
import { useEffect, useState } from "react";

const LandingPage = lazy(() => import('./pages/LandingPage'))
const DashboardPage = lazy(() => import('./pages/DashboardPage').then(m => ({ default: m.DashboardPage })))
const LoginPage = lazy(() => import('./pages/LoginPage'))
const ComponentShowcase = lazy(() => import('./pages/ComponentShowcase'))
const OnboardingPage = lazy(() => import('./pages/OnboardingPage'))

function ProtectedRoute({ children }) {
  const [loading, setLoading] = useState(true);
  const [authenticated, setAuthenticated] = useState(false);

  useEffect(() => {
    fetch(`${API_BASE_URL}/auth/me`, {
      credentials: "include",
    })
      .then((res) => setAuthenticated(res.ok))
      .finally(() => setLoading(false));
  }, []);

  if (loading) return null;

  return authenticated ? children : <Navigate to="/login" replace />;
}

function PublicRoute({ children }) {
  const [loading, setLoading] = useState(true);
  const [authenticated, setAuthenticated] = useState(false);

  useEffect(() => {
    fetch(`${API_BASE_URL}/auth/me`, {
      credentials: "include",
    })
      .then((res) => setAuthenticated(res.ok))
      .finally(() => setLoading(false));
  }, []);

  if (loading) return null;

  return authenticated ? (
    <Navigate to="/dashboard" replace />
  ) : (
    children
  );
}

function App() {
  return (
    <Router>
      <Suspense fallback={null}>
        <Routes>
          <Route path={ROUTES.HOME} element={<PublicRoute><LandingPage /></PublicRoute>} />
          <Route path={ROUTES.DASHBOARD} element={<ProtectedRoute><DashboardPage /></ProtectedRoute>} />
          <Route path="/dashboard/forum" element={<ProtectedRoute><DashboardPage /></ProtectedRoute>} />
          <Route path="/dashboard/analytics" element={<ProtectedRoute><DashboardPage /></ProtectedRoute>} />
          <Route path="/dashboard/pyqs" element={<ProtectedRoute><DashboardPage /></ProtectedRoute>} />
          <Route path="/dashboard/pyqs/:companyName" element={<ProtectedRoute><DashboardPage /></ProtectedRoute>} />
          <Route path="/dashboard/leaderboard" element={<ProtectedRoute><DashboardPage /></ProtectedRoute>} />
          <Route path="/dashboard/settings" element={<ProtectedRoute><DashboardPage /></ProtectedRoute>} />
          <Route path={ROUTES.REGISTER} element={<PublicRoute><LoginPage /></PublicRoute>} />
          <Route path={ROUTES.LOGIN} element={<PublicRoute><LoginPage /></PublicRoute>} />
          <Route path={ROUTES.ONBOARDING} element={<ProtectedRoute><OnboardingPage /></ProtectedRoute>} />
          <Route path="/showcase" element={<ComponentShowcase />} />
        </Routes>
      </Suspense>
    </Router>
  )
}

export default App
