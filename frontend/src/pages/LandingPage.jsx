import { useState } from 'react'
import { LoginUI } from './LoginUI'
import { Button } from '@/components/ui/button'
import { useNavigate } from 'react-router-dom'

export function LandingPage() {
  const [showLogin, setShowLogin] = useState(false)
  const navigate = useNavigate()

  return (
    <div 
      className="min-h-screen bg-cover bg-center bg-no-repeat"
      style={{
        backgroundImage: "url('https://i.ibb.co/cXr30pnK/Untitled.png')"
      }}
    >
      <div className="flex justify-end gap-4 p-8">
        <Button 
          onClick={() => navigate('/dashboard')} 
          size="lg"
          className="bg-gradient-to-br from-[#ABE7B2] to-[#93BFC7] text-white hover:opacity-90 cursor-pointer border-[#93BFC7]/50"
        >
          Dashboard
        </Button>
        <Button 
          onClick={() => setShowLogin(true)} 
          size="lg"
          className="bg-gradient-to-br from-[#ABE7B2] to-[#93BFC7] text-white hover:opacity-90 cursor-pointer border-[#93BFC7]/50"
        >
          Login / Sign Up
        </Button>
      </div>

      {showLogin && (
        <div className="fixed inset-0 z-50" onClick={() => setShowLogin(false)}>
          <LoginUI onClose={() => setShowLogin(false)} />
        </div>
      )}
    </div>
  )
}