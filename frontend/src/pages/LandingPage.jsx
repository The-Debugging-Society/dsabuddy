import { useNavigation } from "@/hooks";
import { Header, Footer } from "@/components/layout";
import { HeroSection, FeaturesSection, ComparisonSection, CTASection } from "@/components/sections";

export function LandingPage() {
  const { goToRegister } = useNavigation();

  return (
    <div>
      <Header />
      <HeroSection onStartTracking={goToRegister} />
      <FeaturesSection />
      <ComparisonSection />
      <CTASection onGetStarted={goToRegister} />
      <Footer />
    </div>
  );
}
