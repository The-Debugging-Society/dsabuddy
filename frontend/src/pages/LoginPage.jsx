import Login from "@/components/ui/Login";
import NavBar from "@/components/ui/NavBar";
import React from "react";
import { Link } from "react-router-dom";

const LoginPage = () => {
  return (
    <div className="bg-[#101e22] min-h-screen pt-35">
      <NavBar />
      <div className="max-w-160 mx-auto">
        <Login />
      </div>
      <div>
        <div className="w-full max-w-120 mt-5 font-JetBrains-Mono mb-6 cursor-pointer mx-auto px-4 sm:px-6 group">
          <Link to="/register">
            <p className="text-[#6c7280] group-hover:text-[#faf506] transition-colors duration-200 w-full text-sm sm:text-base text-center">
              // Not a member? <span className="underline">Register here</span>
            </p>
          </Link>
        </div>
      </div>
    </div>
  );
};

export default LoginPage;
