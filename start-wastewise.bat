@echo off
title WasteWise — Smart Waste Management Platform
color 0A

echo ================================================================
echo           🌿 WasteWise Platform Launcher 🌿
echo ================================================================
echo.
echo [1/4] Closing any conflicting background port processes...
powershell -Command "Stop-Process -Id (Get-NetTCPConnection -LocalPort 5000, 5173, 5174 -ErrorAction SilentlyContinue).OwningProcess -Force -ErrorAction SilentlyContinue" >nul 2>&1

echo [2/4] Starting WasteWise Backend Server (Port 5000)...
start "WasteWise Server" cmd /k "cd /d %~dp0server && node server.js"

echo [3/4] Starting WasteWise Frontend Client (Port 5173)...
start "WasteWise Client" cmd /k "cd /d %~dp0client && npm run dev"

echo [4/4] Waiting for services to initialize...
timeout /t 3 /nobreak >nul

echo.
echo ================================================================
echo  ✅ WasteWise is running! Opening browser to login page...
echo ================================================================
echo.
echo  Demo Accounts for Presentation:
echo   - Citizen User : alex@wastewise.org  / user123456
echo   - Administrator: admin@wastewise.org / admin123456
echo.
echo  Tip: On the login page, you can also just click the green 
echo  "Demo User" or purple "Demo Admin" button for 1-click login!
echo ================================================================

start http://localhost:5173/login
