import { useState } from "react";
import { LockKeyhole, LogIn, UserRound } from "lucide-react";
import { Button, Divider } from "@/components/common";
import { FormField, SocialButton } from "@/components/layout";
import GoogleLogo from "@/assets/Google.png";
import { API_BASE_URL } from "@/config/constants";

export const LoginForm = () => {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  const handleLogin = async (e) => {
    e.preventDefault();
    if (!email || !password) {
      setError("Please fill in all fields");
      return;
    }
    setError("");
    setLoading(true);
    try {
      const res = await fetch(`${API_BASE_URL}/auth/login`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ email, password }),
      });
      const data = await res.json();
      if (!res.ok) {
        throw new Error(data.error || "Login failed");
      }
      if (data.token) {
        localStorage.setItem("token", data.token);
        window.location.href = "/dashboard";
      } else {
        throw new Error("Login succeeded but no token was returned");
      }
    } catch (err) {
      setError(err.message || "Something went wrong. Please try again.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="border rounded-lg border-gray-800 border-t-(--primary-color) border-t-2 bg-[#18262b] max-w-90 xl:max-w-130 2xl:max-w-130 md:max-w-130 p-12 mx-auto">
      <div>
        <div className="w-full text-center mx-auto">
          <h1 className="font-bold text-white font-Spline-Sans text-3xl">
            Welcome Back
          </h1>
          <p className="content-color">Ready to crush some more problems?</p>
        </div>

        <Divider text="OR" className="mt-6 mb-5" />

        {error && (
          <div className="bg-red-500/10 border border-red-500/30 text-red-500 text-sm px-4 py-2.5 rounded mb-4 text-center">
            {error}
          </div>
        )}

        <div>
          <form onSubmit={handleLogin} className="font-JetBrains-Mono">
            <FormField
              label="EMAIL ADDRESS"
              icon={UserRound}
              type="email"
              placeholder="std::cin >> email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              required
            />
            
            <FormField
              label="PASSWORD"
              icon={LockKeyhole}
              type="password"
              placeholder="******"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              required
            />

            <Button type="submit" variant="accent" disabled={loading} className="mt-8 w-full flex gap-3">
              <LogIn />
              <h3>{loading ? "Logging In..." : "Log In"}</h3>
            </Button>
          </form>
        </div>

        <Divider text="OR" className="mt-5 mb-5" />

        <SocialButton 
          icon={GoogleLogo} 
          text="Continue with Google" 
          onClick={() => window.location.href = `${API_BASE_URL}/oauth/google`}
        />
      </div>
    </div>
  );
};
