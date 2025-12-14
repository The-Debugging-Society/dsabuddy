import { useState } from 'react'
import { LoginUI } from './pages/LoginUI'
import { Button } from '@/components/ui/button'

function App() {
  const [showLogin, setShowLogin] = useState(false)

  return (
    <div 
      className="min-h-screen bg-cover bg-center bg-no-repeat"
      style={{
        backgroundImage: "url('https://upload.wikimedia.org/wikipedia/commons/e/e7/Everest_North_Face_toward_Base_Camp_Tibet_Luca_Galuzzi_2006.jpg')"
      }}
    >
      <div className="p-8">
        <Button 
          onClick={() => setShowLogin(true)} 
          size="lg"
          className="bg-gradient-to-r from-blue-600 to-purple-600 hover:from-blue-700 hover:to-purple-700 cursor-pointer"
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

export default App
