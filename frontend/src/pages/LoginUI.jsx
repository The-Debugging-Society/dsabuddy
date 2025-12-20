// LoginUI component for user registration
import { useState } from "react"
import { cn } from "@/lib/utils"
import { Button } from "@/components/ui/button"
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from "@/components/ui/card"
import {
  Field,
  FieldDescription,
  FieldGroup,
  FieldLabel,
} from "@/components/ui/field"
import { Input } from "@/components/ui/input"

function LoginForm({ className, onSwitchToSignup, ...props }) {


  return (
    <div className={cn("flex flex-col gap-6", className)} {...props}>
      <Card>
        <CardHeader>
          <CardTitle className="text-2xl text-[#2D5F3F] font-bold tracking-tight">Login to your account</CardTitle>  
        </CardHeader>
        <CardContent>
          <form>
            <FieldGroup>
              <Field>
                <FieldLabel htmlFor="email" className="text-[#2D5F3F] font-semibold">Email</FieldLabel>
                <Input id="email" type="email" placeholder="raju@laxmichitfund.com" className="border-[#93BFC7]/50 focus-visible:ring-[#5A8A6F]" required />
              </Field>
              <Field>
                <div className="flex items-center">
                  <FieldLabel htmlFor="password" className="text-[#2D5F3F] font-semibold">Password</FieldLabel>
                  <a
                    href="#"
                    className="ml-auto inline-block text-sm text-[#5A8A6F] underline-offset-4 hover:text-[#2D5F3F] hover:underline">
                    Forgot your password?
                  </a>
                </div>
                <Input id="password" type="password" className="border-[#93BFC7]/50 focus-visible:ring-[#5A8A6F]" required />
              </Field>
              <Field>
                <Button type="submit" className="w-full bg-gradient-to-br from-[#ABE7B2] to-[#93BFC7] text-white hover:opacity-90 cursor-pointer">
                  Login
                </Button>
                <Button variant="outline" type="button" className="w-full bg-gradient-to-br from-[#ABE7B2] to-[#93BFC7] text-white hover:opacity-90 border-[#93BFC7]/50 cursor-pointer">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M15.545 6.558a9.4 9.4 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.7 7.7 0 0 1 5.352 2.082l-2.284 2.284A4.35 4.35 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.8 4.8 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.7 3.7 0 0 0 1.599-2.431H8v-3.08z"/>
                  </svg>
                  Login with Google
                </Button>
                <FieldDescription className="text-center text-[#5A8A6F]">
                  Don&apos;t have an account?{" "}
                  <button
                    type="button"
                    onClick={onSwitchToSignup}
                    className="text-[#5A8A6F] underline-offset-4 hover:text-[#2D5F3F] hover:underline cursor-pointer"
                  >
                    Sign up
                  </button>
                </FieldDescription>
              </Field>
            </FieldGroup>
          </form>
        </CardContent>
      </Card>
    </div>
  )
}

function SignupForm({ onSwitchToLogin, ...props }) {
  return (
    <Card {...props}>
      <CardHeader>
        <CardTitle className="text-2xl text-[#2D5F3F] font-bold tracking-tight">Create an account</CardTitle>      </CardHeader>
      <CardContent>

        <form>
          <FieldGroup>
            <Field>
              <FieldLabel htmlFor="email" className="text-[#2D5F3F] font-semibold">Email</FieldLabel>
              <Input id="email" type="email" placeholder="rancho@alliswell.com" className="border-[#93BFC7]/50 focus-visible:ring-[#5A8A6F]" required />
            </Field>
            <Field>
              <FieldLabel htmlFor="password" className="text-[#2D5F3F] font-semibold">Password</FieldLabel>
              <Input id="password" type="password" className="border-[#93BFC7]/50 focus-visible:ring-[#5A8A6F]" required />
            </Field>
            <Field>
              <FieldLabel htmlFor="confirm-password" className="text-[#2D5F3F] font-semibold">
                Confirm Password
              </FieldLabel>
              <Input id="confirm-password" type="password" className="border-[#93BFC7]/50 focus-visible:ring-[#5A8A6F]" required />
            </Field>
            <FieldGroup>
              <Field>
                <Button type="submit" className="w-full bg-gradient-to-br from-[#ABE7B2] to-[#93BFC7] text-white hover:opacity-90 cursor-pointer">
                  Create Account
                </Button>
                <Button variant="outline" type="button" className="w-full bg-gradient-to-br from-[#ABE7B2] to-[#93BFC7] text-white hover:opacity-90 border-[#93BFC7]/50 cursor-pointer">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M15.545 6.558a9.4 9.4 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.7 7.7 0 0 1 5.352 2.082l-2.284 2.284A4.35 4.35 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.8 4.8 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.7 3.7 0 0 0 1.599-2.431H8v-3.08z"/>
                  </svg>
                  Sign up with Google
                </Button>
                <FieldDescription className="px-6 text-center text-[#5A8A6F]">
                  Already have an account?{" "}
                  <button
                    type="button"
                    onClick={onSwitchToLogin}
                    className="text-[#5A8A6F] underline-offset-4 hover:text-[#2D5F3F] hover:underline cursor-pointer"
                  >
                    Sign in
                  </button>
                </FieldDescription>
              </Field>
            </FieldGroup>
          </FieldGroup>
        </form>
      </CardContent>
    </Card>
  )
}

export function LoginUI({ onClose }) {
  const [isSignup, setIsSignup] = useState(false)

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-6 md:p-10 backdrop-blur-lg bg-white/30">
      <div className="w-full max-w-sm" onClick={(e) => e.stopPropagation()}>
        <div className="relative">
          {onClose && (
            <button 
              onClick={onClose} 
              className="absolute right-4 top-4 z-10 text-[#5A8A6F] hover:text-[#2D5F3F] transition-colors cursor-pointer"
            >
              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                <path d="M18 6L6 18M6 6l12 12"/>
              </svg>
              <span className="sr-only">Close</span>
            </button>
          )}
          
          {isSignup ? (
            <SignupForm 
              className="bg-white border-[#93BFC7]/50 shadow-2xl shadow-[#93BFC7]/30" 
              onSwitchToLogin={() => setIsSignup(false)}
            />
          ) : (
            <LoginForm 
              className="bg-white border-[#93BFC7]/50 shadow-2xl shadow-[#93BFC7]/30" 
              onSwitchToSignup={() => setIsSignup(true)}
            />
          )}
        </div>
      </div>
    </div>
  )
}


export default LoginUI;
