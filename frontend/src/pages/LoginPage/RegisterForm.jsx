import { useState } from "react";
import {
  AtSign,
  IdCard,
  IdCardLanyard,
  KeyRound,
  RotateCcwKey,
} from "lucide-react";
import { Button, Divider } from "@/components/common";
import { FormField, SocialButton } from "@/components/layout";
import GoogleLogo from "@/assets/Google.png";
import { API_BASE_URL } from "@/config/constants";

export const RegisterForm = () => {
  const [name, setName] = useState("");
  const [userName, setUserName] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(false);

  const handleRegister = async (e) => {
    e.preventDefault();
    if (!name || !userName || !email || !password || !confirmPassword) {
      setError("Please fill in all fields");
      return;
    }
    if (password !== confirmPassword) {
      setError("Passwords do not match");
      return;
    }
    setError("");
    setLoading(true);
    try {
      const res = await fetch(`${API_BASE_URL}/auth/signup`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ name, userName, email, password }),
      });
      const data = await res.json();
      if (!res.ok) {
        throw new Error(data.error || "Registration failed");
      }
      if (data.token) {
        localStorage.setItem("token", data.token);
        window.location.href = "/dashboard";
      } else {
        throw new Error("Registration succeeded but no token was returned");
      }
    } catch (err) {
      setError(err.message || "Something went wrong. Please try again.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="flex justify-center items-center w-full">
      <div className="mt-6 sm:mt-10 w-full border-t-(--primary-color) border-t-2 max-w-120 p-4 sm:p-6 md:p-10 max-h-fit rounded-xl bg-[#18262b] border border-gray-700 mx-auto">
        {error && (
          <div className="bg-red-500/10 border border-red-500/30 text-red-500 text-sm px-4 py-2.5 rounded mb-4 text-center">
            {error}
          </div>
        )}
        
        <form onSubmit={handleRegister} className="mx-auto w-full flex flex-col justify-center items-center">
          <FormField
            label="Name"
            labelIcon={IdCard}
            placeholder="enter_name"
            value={name}
            onChange={(e) => setName(e.target.value)}
            required
          />

          <FormField
            label="Username"
            labelIcon={IdCardLanyard}
            placeholder="enter_username"
            value={userName}
            onChange={(e) => setUserName(e.target.value)}
            required
          />

          <FormField
            label="Email Address"
            labelIcon={AtSign}
            type="email"
            placeholder="enter_email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
          />

          <div className="w-full flex flex-col sm:flex-row gap-4">
            <FormField
              label="Password"
              labelIcon={KeyRound}
              type="password"
              placeholder="******"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              required
            />

            <FormField
              label="Confirm Password"
              labelIcon={RotateCcwKey}
              type="password"
              placeholder="******"
              value={confirmPassword}
              onChange={(e) => setConfirmPassword(e.target.value)}
              required
            />
          </div>

          <Button type="submit" variant="accent" disabled={loading} className="w-full text-sm sm:text-base mt-4">
            {loading ? "[ Initializing... ]" : "[ Initialize Account ]"}
          </Button>
        </form>

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
