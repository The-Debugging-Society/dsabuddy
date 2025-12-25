export const Footer = () => {
  const year = new Date().getFullYear();
  return (
    <footer className="w-full bg-gradient-to-br from-gray-950 via-gray-900 to-gray-950 border-t border-gray-800 shadow-inner mt-20">
      <div className="max-w-2xl mx-auto px-6 py-7 flex flex-col items-center gap-3">
        <div className="flex items-center gap-3 mb-1">
          <img
            src="/logo_tds.jpg"
            alt="The Debugging Society Logo"
            className="h-9 w-9 rounded-full border-2 border-blue-400 object-cover shadow-md bg-white/10"
          />
          <span className="text-lg font-bold text-gray-100 tracking-tight drop-shadow-sm">DSABuddy</span>
        </div>
        <span className="text-xs text-gray-400 tracking-wide">&copy; {year} DSABuddy. All rights reserved.</span>
        <div className="w-full flex justify-center mt-1">
          <span className="text-xs text-gray-500 flex items-center gap-1">
            Made with <span className="text-red-500 text-base">&#10084;</span> by{' '}
            <a
              href="https://tds-alumni.vercel.app/"
              target="_blank"
              rel="noopener noreferrer"
              className="text-blue-400 font-semibold hover:underline focus:outline-none focus:ring-2 focus:ring-blue-400 rounded"
            >
              The Debugging Society
            </a>
          </span>
        </div>
      </div>
    </footer>
  );
}
