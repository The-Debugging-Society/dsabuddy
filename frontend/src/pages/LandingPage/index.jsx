import { useEffect } from "react";
import { useNavigation } from "@/hooks";
import { Navbar, Footer } from "@/components/layout";
import { Seo } from "@/components/common";
import { organizationSchema, websiteSchema, webApplicationSchema } from "@/config/seo";
import { HeroSection } from "./HeroSection";
import { FeaturesSection } from "./FeaturesSection";
import { ComparisonSection } from "./ComparisonSection";
import { CTASection } from "./CTASection";

export function LandingPage() {
  const { goToRegister } = useNavigation();

  return (
    <div>
      <Seo
        path="/"
        description="Track all your DSA practice in one place. DSABuddy unifies your LeetCode, Codeforces, CodeChef, and GeeksforGeeks stats with streaks and leaderboards for coding-interview prep."
        jsonLd={[organizationSchema, websiteSchema, webApplicationSchema]}
      />
      <Navbar />
      <HeroSection onStartTracking={goToRegister} />
      <FeaturesSection />
      <ComparisonSection />
      <CTASection onGetStarted={goToRegister} />
      <Footer />
    </div>
  );
}

export default LandingPage;
