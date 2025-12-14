import { cn } from "@/lib/utils"
import { Button } from "@/components/ui/button"
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card"

export function LoginUI({
  className,
  onClose,
  ...props
}) {
  const handleGoogleLogin = () => {
    window.location.href = 'http://localhost:3001/api/auth/google'
  }

  return (
    <div className="flex min-h-svh w-full items-center justify-center p-6 md:p-10 backdrop-blur-md bg-background/50">
      <div className="w-full max-w-sm" onClick={(e) => e.stopPropagation()}>
        <div className={cn("flex flex-col gap-6", className)} {...props}>
          <Card className="bg-gradient-to-br from-slate-950 via-blue-950 to-slate-950 text-white border-blue-900/50 shadow-2xl shadow-blue-900/50 backdrop-blur-sm relative">
            {onClose && (
              <button
                onClick={onClose}
                className="absolute right-4 top-4 text-white/70 hover:text-white transition-colors focus:outline-none cursor-pointer"
              >
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                  <line x1="18" y1="6" x2="6" y2="18"></line>
                  <line x1="6" y1="6" x2="18" y2="18"></line>
                </svg>
                <span className="sr-only">Close</span>
              </button>
            )}
            <CardHeader className="text-center">
              <CardTitle className="text-2xl text-white font-bold tracking-tight">Log-in / Sign up</CardTitle>
            </CardHeader>
            <CardContent>
              <Button onClick={handleGoogleLogin} variant="outline" className="w-full cursor-pointer">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                  <path d="M15.545 6.558a9.4 9.4 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.7 7.7 0 0 1 5.352 2.082l-2.284 2.284A4.35 4.35 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.8 4.8 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.7 3.7 0 0 0 1.599-2.431H8v-3.08z"/>
                </svg>
                Continue with Google
              </Button>
            </CardContent>
          </Card>
        </div>
      </div>
    </div>
  );
}


