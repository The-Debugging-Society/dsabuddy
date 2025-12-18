import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
<<<<<<< HEAD

=======
import tailwindcss from '@tailwindcss/vite'
>>>>>>> 403f149db495ae53d2395af5c88816739dad0610
import path from 'path'

// https://vitejs.dev/config/
export default defineConfig({
<<<<<<< HEAD
  plugins: [
    react(),
  ],
=======
  plugins: [react(), tailwindcss()],
>>>>>>> 403f149db495ae53d2395af5c88816739dad0610
  resolve: {
    alias: {
      '@': path.resolve(__dirname, 'src'),
    },
  },
})
