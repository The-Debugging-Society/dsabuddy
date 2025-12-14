import { useState } from 'react'
import { Button } from '@/components/ui/button'
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card'
import { useNavigate } from 'react-router-dom'
import { ProfileSetupUI } from './ProfileSetupUI'

export function DashboardPage() {
  const navigate = useNavigate()
  const [showProfileSetup, setShowProfileSetup] = useState(false)

  const handleLogout = () => {

    navigate('/')
  }
  return (
    <div className="min-h-screen bg-[#ECF4E8]">

      <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4 p-4 sm:p-6 md:p-8">
        <div className="flex items-center gap-3 sm:gap-4">
          <div className="w-12 h-12 sm:w-14 sm:h-14 md:w-16 md:h-16 rounded-full bg-gradient-to-br from-[#ABE7B2] to-[#93BFC7] border-2 border-[#93BFC7]/50 flex items-center justify-center overflow-hidden">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className="text-white sm:w-7 sm:h-7 md:w-8 md:h-8">
              <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
              <circle cx="12" cy="7" r="4"></circle>
            </svg>
          </div>
          <div>
            <h1 className="text-2xl sm:text-3xl md:text-4xl font-bold text-[#2D5F3F] drop-shadow-lg">Dashboard</h1>
            <p className="text-[#5A8A6F] text-xs sm:text-sm mt-1">Welcome, User</p>
          </div>
        </div>
        <div className="flex gap-2 sm:gap-3 md:gap-4 w-full sm:w-auto">
          <Button 
            onClick={() => setShowProfileSetup(true)}
            size="sm"
            className="flex-1 sm:flex-none bg-gradient-to-br from-[#ABE7B2] to-[#93BFC7] text-white border border-[#93BFC7]/50 hover:shadow-lg hover:shadow-[#93BFC7]/50 transition-all cursor-pointer text-xs sm:text-sm"
          >
            Setup Profile
          </Button>
          <Button 
            onClick={handleLogout}
            size="sm"
            className="flex-1 sm:flex-none bg-gradient-to-br from-[#ABE7B2] to-[#93BFC7] text-white border border-[#93BFC7]/50 hover:shadow-lg hover:shadow-[#93BFC7]/50 transition-all cursor-pointer text-xs sm:text-sm"
          >
            Logout
          </Button>
        </div>
      </div>


      <div className="max-w-7xl mx-auto px-4 sm:px-6 md:px-8 pb-6 md:pb-8">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-4 sm:gap-5 md:gap-6">

          <Card className="bg-white border-[#93BFC7]/50 shadow-xl shadow-[#93BFC7]/20">
            <CardHeader className="pb-2">
              <CardTitle className="text-base text-[#2D5F3F]">Total Questions Practiced</CardTitle>
              <CardDescription className="text-[#5A8A6F] text-xs">Across all platforms</CardDescription>
            </CardHeader>
            <CardContent className="space-y-2">
              <div className="flex items-center justify-between">
                <p className="text-3xl font-bold text-[#2D5F3F]">0</p>
                <p className="text-[#5A8A6F] text-xs">problems</p>
              </div>
              <div className="h-24 bg-[#CBF3BB]/20 rounded border border-[#93BFC7]/20 flex items-center justify-center">
                <p className="text-[#5A8A6F] text-xs">Platform distribution chart</p>
              </div>
            </CardContent>
          </Card>


          <Card className="bg-white border-[#93BFC7]/50 shadow-xl shadow-[#93BFC7]/20">
            <CardHeader className="pb-2">
              <CardTitle className="text-base text-[#2D5F3F]">Platform Activity</CardTitle>
              <CardDescription className="text-[#5A8A6F] text-xs">Track your consistency</CardDescription>
            </CardHeader>
            <CardContent className="space-y-1.5">

              <div>
                <h3 className="text-xs font-semibold text-[#2D5F3F] mb-0.5">LeetCode</h3>
                <div className="h-8 bg-[#CBF3BB]/20 rounded border border-[#93BFC7]/20 flex items-center justify-center">
                  <p className="text-[#5A8A6F] text-xs">Activity</p>
                </div>
              </div>


              <div>
                <h3 className="text-xs font-semibold text-[#2D5F3F] mb-0.5">CodeChef</h3>
                <div className="h-8 bg-[#CBF3BB]/20 rounded border border-[#93BFC7]/20 flex items-center justify-center">
                  <p className="text-[#5A8A6F] text-xs">Activity</p>
                </div>
              </div>


              <div>
                <h3 className="text-xs font-semibold text-[#2D5F3F] mb-0.5">HackerRank</h3>
                <div className="h-8 bg-[#CBF3BB]/20 rounded border border-[#93BFC7]/20 flex items-center justify-center">
                  <p className="text-[#5A8A6F] text-xs">Activity</p>
                </div>
              </div>


              <div>
                <h3 className="text-xs font-semibold text-[#2D5F3F] mb-0.5">Codeforces</h3>
                <div className="h-8 bg-[#CBF3BB]/20 rounded border border-[#93BFC7]/20 flex items-center justify-center">
                  <p className="text-[#5A8A6F] text-xs">Activity</p>
                </div>
              </div>
            </CardContent>
          </Card>


          <Card className="bg-white border-[#93BFC7]/50 shadow-xl shadow-[#93BFC7]/20 lg:col-span-2">
            <CardHeader className="pb-2">
              <CardTitle className="text-base text-[#2D5F3F]">Your Leaderboard Position</CardTitle>
              <CardDescription className="text-[#5A8A6F] text-xs">Global ranking on DSA Buddy</CardDescription>
            </CardHeader>
            <CardContent>
              <div className="flex flex-col items-center justify-center py-3">
                <p className="text-[#5A8A6F] text-xs mb-2">Current Rank</p>
                <p className="text-4xl font-bold text-[#2D5F3F] mb-1">--</p>
                <p className="text-[#5A8A6F] text-xs">out of -- users</p>
              </div>
            </CardContent>
          </Card>
        </div>
      </div>

      {showProfileSetup && (
        <div className="fixed inset-0 z-50" onClick={() => setShowProfileSetup(false)}>
          <ProfileSetupUI onClose={() => setShowProfileSetup(false)} />
        </div>
      )}
    </div>
  )
}
