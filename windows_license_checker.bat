@echo off
title Windows License Checker
color 0B
cls

echo ==================================================
echo         WINDOWS LICENSE CHECKER TOOL
echo ==================================================
echo.

echo [+] Checking activation status (slmgr /xpr)...
timeout /t 1 >nul
slmgr /xpr

echo.
echo [+] Getting license info summary (slmgr /dli)...
timeout /t 1 >nul
slmgr /dli

echo.
echo [+] Getting full license detail (slmgr /dlv)...
timeout /t 1 >nul
slmgr /dlv

echo.
echo [+] (Optional) Trying activation (slmgr /ato)...
timeout /t 1 >nul
slmgr /ato

echo.
echo [✓] Selesai buka semua status dalam pop-up. Tekan apa-apa nak tutup.
pause
