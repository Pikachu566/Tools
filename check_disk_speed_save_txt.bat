@echo off
title Disk Speed Checker + Save to TXT
color 0B
cls

echo ==================================================
echo         DISK SPEED CHECKER + LOG SAVER
echo ==================================================
echo.

:: Buat folder log
set logdir=%UserProfile%\Desktop\Disk_Speed_Logs
if not exist "%logdir%" (
    mkdir "%logdir%"
)

:: Senarai drive yang nak diuji
set drives=C D E F G H J

for %%D in (%drives%) do (
    echo Checking drive %%D...
    
    :: Check jika drive tu wujud
    if exist %%D:\ (
        echo [+] Running test on drive %%D...
        echo ------------------------------------ >> "%logdir%\disk_%%D.txt"
        echo Result for Drive %%D: >> "%logdir%\disk_%%D.txt"
        echo ------------------------------------ >> "%logdir%\disk_%%D.txt"
        winsat disk -drive %%D >> "%logdir%\disk_%%D.txt"
        echo [✓] Saved result to disk_%%D.txt
    ) else (
        echo [-] Drive %%D not found. Skipping...
    )

    echo.
    timeout /t 2 >nul
)

echo ==================================================
echo [✓] Semua result disimpan di folder:
echo     %logdir%
echo ==================================================
pause
