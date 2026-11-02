@echo off
title Stop WasteWise Platform
color 0C

echo ================================================================
echo           🛑 Stopping WasteWise Platform Services 🛑
echo ================================================================
echo.
echo Freeing ports 5000 and 5173...
powershell -Command "Stop-Process -Id (Get-NetTCPConnection -LocalPort 5000, 5173, 5174 -ErrorAction SilentlyContinue).OwningProcess -Force -ErrorAction SilentlyContinue" >nul 2>&1

echo.
echo ✅ WasteWise background services have been stopped.
echo You can run start-wastewise.bat anytime to reopen the project!
echo.
pause
