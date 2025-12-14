import { useState } from 'react'
import { cn } from "@/lib/utils"
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { Label } from "@/components/ui/label"
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card"

export function ProfileSetupUI({
  className,
  onClose,
  ...props
}) {
  const [username, setUsername] = useState('')
  const [profilePic, setProfilePic] = useState(null)

  const isUsernameValid = username.length >= 3

  const handleProfilePicChange = (e) => {
    const file = e.target.files?.[0]
    if (file) {
      const reader = new FileReader()
      reader.onloadend = () => {
        setProfilePic(reader.result)
      }
      reader.readAsDataURL(file)
    }
  }

  const handleConnect = (platform) => {
    console.log(`Connecting to ${platform}`)
  
  }

  return (
    <div className="flex min-h-svh w-full items-center justify-center p-6 md:p-10 backdrop-blur-lg bg-white/30">
      <div className="w-full max-w-md" onClick={(e) => e.stopPropagation()}>
        <div className={cn("flex flex-col gap-6", className)} {...props}>
          <Card className="bg-white border-[#93BFC7]/50 shadow-2xl shadow-[#93BFC7]/30 relative">
            {onClose && (
              <button
                onClick={isUsernameValid ? onClose : undefined}
                disabled={!isUsernameValid}
                className={cn(
                  "absolute right-4 top-4 transition-colors focus:outline-none",
                  isUsernameValid 
                    ? "text-[#5A8A6F] hover:text-[#2D5F3F] cursor-pointer" 
                    : "text-[#5A8A6F]/30 cursor-not-allowed opacity-50"
                )}
                title={!isUsernameValid ? "Username must be at least 3 characters" : "Close"}
              >
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                  <line x1="18" y1="6" x2="6" y2="18"></line>
                  <line x1="6" y1="6" x2="18" y2="18"></line>
                </svg>
                <span className="sr-only">Close</span>
              </button>
            )}
            <CardHeader className="text-center">
              <CardTitle className="text-2xl text-[#2D5F3F] font-bold tracking-tight">Setup Profile</CardTitle>
              <CardDescription className="text-[#5A8A6F]">Connect your coding platforms</CardDescription>
            </CardHeader>
            <CardContent className="space-y-6">
              
              <div className="flex flex-col items-center gap-4">
                <div className="relative">
                  <div className="w-24 h-24 rounded-full bg-[#CBF3BB] border-2 border-[#93BFC7]/50 flex items-center justify-center overflow-hidden">
                    {profilePic ? (
                      <img src={profilePic} alt="Profile" className="w-full h-full object-cover" />
                    ) : (
                      <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className="text-[#5A8A6F]">
                        <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                        <circle cx="12" cy="7" r="4"></circle>
                      </svg>
                    )}
                  </div>
                  <label htmlFor="profile-pic" className="absolute bottom-0 right-0 bg-[#93BFC7] hover:bg-[#ABE7B2] rounded-full p-2 cursor-pointer transition-colors">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
                      <path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path>
                      <circle cx="12" cy="13" r="4"></circle>
                    </svg>
                  </label>
                  <input
                    id="profile-pic"
                    type="file"
                    accept="image/*"
                    className="hidden"
                    onChange={handleProfilePicChange}
                  />
                </div>
              </div>

          
              <div className="space-y-2">
                <Label htmlFor="username" className="text-[#2D5F3F]">Username</Label>
                <Input
                  id="username"
                  type="text"
                  placeholder="Enter your username"
                  value={username}
                  onChange={(e) => setUsername(e.target.value)}
                  className="bg-white/10 border-white/20 text-[#2D5F3F] placeholder:text-[#5A8A6F]/50 focus:border-[#93BFC7] backdrop-blur-sm"
                />
              </div>

             
              <div className="space-y-3">
                <Button 
                  onClick={() => handleConnect('LeetCode')} 
                  variant="outline" 
                  className="w-full cursor-pointer bg-white/10 border-white/20 text-[#2D5F3F] hover:bg-[#ABE7B2] hover:text-white backdrop-blur-sm"
                >
                  Connect LeetCode
                </Button>
                
                <Button 
                  onClick={() => handleConnect('CodeChef')} 
                  variant="outline" 
                  className="w-full cursor-pointer bg-white/10 border-white/20 text-[#2D5F3F] hover:bg-[#ABE7B2] hover:text-white backdrop-blur-sm"
                >
                  Connect CodeChef
                </Button>
                
                <Button 
                  onClick={() => handleConnect('HackerRank')} 
                  variant="outline" 
                  className="w-full cursor-pointer bg-white/10 border-white/20 text-[#2D5F3F] hover:bg-[#ABE7B2] hover:text-white backdrop-blur-sm"
                >
                  Connect HackerRank
                </Button>
                
                <Button 
                  onClick={() => handleConnect('Codeforces')} 
                  variant="outline" 
                  className="w-full cursor-pointer bg-white/10 border-white/20 text-[#2D5F3F] hover:bg-[#ABE7B2] hover:text-white backdrop-blur-sm"
                >
                  Connect Codeforces
                </Button>
              </div>
            </CardContent>
          </Card>
        </div>
      </div>
    </div>
  )
}
