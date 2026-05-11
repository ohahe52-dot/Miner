<!DOCTYPE html>
<html lang="en" class="dark">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Minet | 404 Not Found</title>

  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    tailwind.config = {
      darkMode: 'class',
      theme: {
        extend: {
          colors: {
            background: '#0f172a',
            surface: '#1e293b',
            primary: { 500: '#3b82f6', 600: '#2563eb' }
          },
          animation: {
            'fade-in': 'fadeIn 0.5s ease-out forwards',
            'float': 'float 6s ease-in-out infinite',
          },
          keyframes: {
            fadeIn: {
              '0%': { opacity: '0', transform: 'translateY(10px)' },
              '100%': { opacity: '1', transform: 'translateY(0)' },
            },
            float: {
              '0%': { transform: 'translateY(0px)' },
              '50%': { transform: 'translateY(-20px)' },
              '100%': { transform: 'translateY(0px)' },
            },
          },
        }
      }
    }
  </script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    body {
      background-color: #0f172a; /* Fallback */
      background-image: radial-gradient(circle at 1px 1px, #1e293b 1px, transparent 0);
      background-size: 20px 20px;
    }
    
    .glow {
        position: absolute;
        width: 600px;
        height: 600px;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        background: radial-gradient(circle, rgba(59, 130, 246, 0.2), transparent 60%);
        pointer-events: none;
    }
  </style>

</head>

<body class="dark min-h-screen flex items-center justify-center p-6 relative overflow-hidden">
  
  <div class="glow"></div>

  <div class="text-center relative z-10 animate-fade-in">
    
    <!-- Animated 404 Number -->
    <div class="relative w-full mb-8 animate-float">
      <h1 class="text-9xl md:text-[250px] font-black text-transparent bg-clip-text bg-gradient-to-r from-blue-600 to-indigo-700 opacity-20">404</h1>
      <div class="absolute inset-0 flex items-center justify-center">
        <i class="fa-solid fa-ghost text-5xl md:text-8xl text-blue-400"></i>
      </div>
    </div>
    
    <p class="text-sm font-medium text-blue-400">ERROR CODE: 404</p>
    <h1 class="mt-3 text-3xl md:text-4xl font-semibold text-white">Oops, Page Not Found</h1>
    <p class="mt-4 text-gray-400 max-w-md mx-auto">The page you're looking for doesn't exist, was removed, or is temporarily unavailable.</p>

    <div class="flex flex-col sm:flex-row items-center justify-center mt-8 gap-4">
      <button onclick="window.history.back()" class="flex items-center justify-center w-full sm:w-auto px-6 py-3 text-sm text-gray-200 transition-colors duration-200 bg-surface border border-gray-700 rounded-xl gap-x-2 hover:bg-gray-800">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5 rtl:rotate-180">
          <path stroke-linecap="round" stroke-linejoin="round" d="M6.75 15.75L3 12m0 0l3.75-3.75M3 12h18" />
        </svg>
        <span>Go Back</span>
      </button>

      <button onclick="location.href='https://dashboard.minet.vn'" class="w-full sm:w-auto px-6 py-3 text-sm font-bold tracking-wide text-white transition-colors duration-200 bg-blue-600 rounded-xl shrink-0 hover:bg-blue-500">
        Return Home
      </button>
    </div>
  </div>

</body>
</html>
