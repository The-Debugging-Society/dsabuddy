import { LockKeyhole, LogIn, UserRound } from "lucide-react";
import React from "react";

const Login = () => {
  return (
    <div className="border rounded-lg border-gray-800 border-t-(--primary-color) border-t-2 bg-[#18262b] max-w-90 xl:max-w-130 2xl:max-w-130 md:max-w-130 p-12 mx-auto">
      <div>
        <div className="w-full text-center mx-auto">
          <h1 className="font-bold text-white font-Spline-Sans text-3xl">
            Welcome Back
          </h1>
          <p className="content-color">Ready to crush some more problems?</p>
        </div>
        <div className="bg-white hover:opacity-90 cursor-pointer mx-auto mt-8 w-fit p-3 pl-10 pr-10 xl:pr-25 xl:pl-25 2xl:pr-25 2xl:pl-25 md:pl-25 md:pr-25 rounded-lg">
          <button className="flex justify-center items-center gap-4 ">
            <img className="size-5" src="Google.png" alt="Google logo" />
            <p className="font-bold">Login with Google</p>
          </button>
        </div>
        <div className="content-color flex mt-6 mb-5 justify-center items-center gap-2">
          <div className="w-38 sm:w-32 md:w-47 bg-(--content-color) h-0.5" />
          <div className="text-sm sm:text-base">OR</div>
          <div className="w-38 sm:w-32 md:w-47 h-0.5 bg-(--content-color)" />
        </div>
        <div>
          <form className="font-JetBrains-Mono">
            <div className="mb-4">
              <label className="content-color uppercase block mb-2">Email Address</label>
              <div className="relative">
                <UserRound className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400 w-5  h-5" />
                <input
                  placeholder="std::cin >> email"
                  className="w-full pl-10 pr-4 py-2 bg-[#101e22] text-white border border-gray-600 rounded-lg focus:outline-none focus:border-[#faf506] focus:ring-1 focus:ring-[#faf506]"
                />
              </div>
            </div>
            <div>
              <label className="content-color uppercase block mb-2">Password</label>
              <div className="relative">
                <LockKeyhole className="absolute left-3 top-1/2 -translate-y-1/2 text-gray-400 w-5 h-5" />
                <input
                  placeholder="******"
                  type="password"
                  className="w-full pl-10 pr-4 py-2 bg-[#101e22] text-white border border-gray-600 rounded-lg focus:outline-none focus:border-[#faf506] focus:ring-1 focus:ring-[#faf506] "
                />
              </div>
            </div>
          </form>
        </div>
        <div className="bg-(--primary-color) mt-8 p-2 sm:p-3 font-bold cursor-pointer w-full rounded-lg text-center shadow-[0_0_18px_rgba(250,245,6,0.45)] hover:shadow-[0_0_26px_rgba(250,245,6,0.75)] transition-shadow duration-300">
            <button className="flex gap-3 w-full items-center text-center justify-center">
                <LogIn />
                <h3>Log In</h3>
            </button>
        </div>
      </div>
    </div>
  );
};

export default Login;
