import { useNavigate } from "react-router-dom";
import { Header, Footer } from "@/components/layout";
import { HeroSection, FeaturesSection, ComparisonSection, CTASection } from "@/components/sections";

export function LandingPage() {
  const navigate = useNavigate();
  const handleStartTracking = () => navigate("/register");

  return (
    <div>
      <Header />
      <HeroSection onStartTracking={handleStartTracking} />
      <FeaturesSection />
      <ComparisonSection />
      <CTASection onGetStarted={handleStartTracking} />
      <Footer />
    </div>
  );
}
