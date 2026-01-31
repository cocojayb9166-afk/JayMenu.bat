@echo off
setlocal EnableExtensions EnableDelayedExpansion
title JayMenu
color 05
chcp 65001 >nul
cls

set DATA_DIR=%APPDATA%\JayMenu
set HWID_FILE=%DATA_DIR%\hwid.dat

:: =========================
:: GET HWID (MODERN)
:: =========================
for /f "usebackq delims=" %%A in (`powershell -NoProfile -Command "(Get-CimInstance Win32_ComputerSystemProduct).UUID"`) do set HWID=%%A

:: =========================
:: ENTER KEY
:: =========================
echo ===============================
echo        ENTER YOUR KEY
echo ===============================
echo.
set /p USER_KEY=Key: 

:: =========================
:: VALID KEYS
:: =========================
set VALID=0
if "%USER_KEY%"=="3BQY-LTOR-8TRZ-E92R" set VALID=1
if "%USER_KEY%"=="7FJR-K2LM-9TQX-B4ZD" set VALID=1
if "%USER_KEY%"=="P8YW-L3NV-Q7CR-H5SK" set VALID=1

if "%VALID%"=="0" (
    echo.
    echo ❌ Invalid Key
    pause
    exit
)

:: =========================
:: FIRST RUN HWID BIND
:: =========================
if not exist "%DATA_DIR%" mkdir "%DATA_DIR%"

if not exist "%HWID_FILE%" (
    echo %HWID%>"%HWID_FILE%"
    echo.
    echo 🔒 Key locked to this PC
    timeout /t 1 >nul
    goto ACCESS_GRANTED
)

:: =========================
:: CHECK HWID
:: =========================
set /p SAVED_HWID=<"%HWID_FILE%"

if not "%HWID%"=="%SAVED_HWID%" (
    echo.
    echo ❌ This key is already used on another PC
    pause
    exit
)

:ACCESS_GRANTED
echo.
echo ✅ Access Granted
timeout /t 1 >nul
goto home

:: =========================
:: MENU
:: =========================
:home
cls
title JayMenu
echo ████████╗██╗████████╗ █████╗ ███╗   ██╗
echo ╚══██╔══╝██║╚══██╔══╝██╔══██╗████╗  ██║
echo    ██║   ██║   ██║   ███████║██╔██╗ ██║
echo    ██║   ██║   ██║   ██╔══██║██║╚██╗██║
echo    ██║   ██║   ██║   ██║  ██║██║ ╚████║
echo    ╚═╝   ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝
echo.
echo [1] Test
echo [2] Exit
echo.
set /p choice=>

if "%choice%"=="1" echo Test OK & pause & goto home
if "%choice%"=="2" exit
goto home
