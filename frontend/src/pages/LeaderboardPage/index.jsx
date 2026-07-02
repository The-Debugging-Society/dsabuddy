import { Navbar, Footer } from "@/components/layout";
import { Seo } from "@/components/common";
import { breadcrumbSchema } from "@/config/seo";
import { Leaderboard } from "../DashboardPage/Leaderboard";
import { useUserStore } from "@/store/useUserStore";

export default function LeaderboardPage() {
  const loggedInUser = useUserStore((state) => state.user);

  return (
    <div className="min-h-screen bg-[#000000] text-white flex flex-col justify-between">
      <Seo
        title="DSA Practice Leaderboard — Top Coders on DSABuddy"
        description="See how you rank against other coders. The DSABuddy leaderboard tracks combined DSA practice across LeetCode, Codeforces, CodeChef, and GeeksforGeeks."
        path="/leaderboard"
        jsonLd={breadcrumbSchema([
          { name: "Home", path: "/" },
          { name: "Leaderboard", path: "/leaderboard" },
        ])}
      />
      <Navbar />
      
      <main className="flex-1 w-full max-w-7xl mx-auto px-4 md:px-8 pt-32 pb-16">
        <Leaderboard user={loggedInUser} />
      </main>

      <Footer />
    </div>
  );
}
