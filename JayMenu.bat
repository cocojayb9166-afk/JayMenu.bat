@echo off
setlocal EnableExtensions EnableDelayedExpansion
title JayMenu
color 05
chcp 65001 >nul
cls

:: =========================
:: CONFIG
:: =========================
set DATA_DIR=%APPDATA%\JayMenu
set LICENSE_FILE=%DATA_DIR%\license.dat

:: =========================
:: GET HWID (MODERN WINDOWS)
:: =========================
for /f "usebackq delims=" %%A in (`
  powershell -NoProfile -Command "(Get-CimInstance Win32_ComputerSystemProduct).UUID"
`) do set HWID=%%A

:: =========================
:: ASK FOR KEY
:: =========================
echo ===============================
echo        ENTER YOUR KEY
echo ===============================
echo.
set /p USER_KEY=Key: 

:: =========================
:: VALID KEYS LIST
:: =========================
set KEY_OK=0
if "%USER_KEY%"=="3BQY-LTOR-8TRZ-E92R" set KEY_OK=1
if "%USER_KEY%"=="7FJR-K2LM-9TQX-B4ZD" set KEY_OK=1
if "%USER_KEY%"=="P8YW-L3NV-Q7CR-H5SK" set KEY_OK=1

if "%KEY_OK%"=="0" (
    echo.
    echo ❌ Invalid Key
    pause
    exit
)

:: =========================
:: CREATE DATA FOLDER
:: =========================
if not exist "%DATA_DIR%" mkdir "%DATA_DIR%"

:: =========================
:: FIRST RUN = LOCK KEY
:: =========================
if not exist "%LICENSE_FILE%" (
    echo %USER_KEY%|%HWID%>"%LICENSE_FILE%"
    echo.
    echo 🔒 Key locked to this PC
    timeout /t 1 >nul
    goto ACCESS_GRANTED
)

:: =========================
:: CHECK LICENSE
:: =========================
for /f "tokens=1,2 delims=|" %%A in (%LICENSE_FILE%) do (
    set SAVED_KEY=%%A
    set SAVED_HWID=%%B
)

if not "%USER_KEY%"=="%SAVED_KEY%" (
    echo.
    echo ❌ This key does not match this license
    pause
    exit
)

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
echo [1] Test Option
echo [2] Exit
echo.
set /p choice=>

if "%choice%"=="1" (
    echo Test successful!
    pause
    goto home
)

if "%choice%"=="2" exit
goto home
