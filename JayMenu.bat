@echo off
title Private Loader
color 05
chcp 65001 >nul
cls

:: =========================
:: GET HWID
:: =========================
for /f "tokens=2 delims==" %%A in (
 'wmic csproduct get uuid /value'
) do set HWID=%%A
set HWID=%HWID: =%

:: =========================
:: ENTER KEY
:: =========================
echo Enter Your Key
echo.
set /p USER_KEY=

:: =========================
:: KEY + HWID CHECK
:: =========================

:: Key 1
if "%USER_KEY%"=="3BQY-LTOR-8TRZ-E92R" (
    if "%HWID%"=="PUT-HWID-HERE-1" goto ACCESS_GRANTED
    goto HWID_FAIL
)

:: Key 2
if "%USER_KEY%"=="7FJR-K2LM-9TQX-B4ZD" (
    if "%HWID%"=="PUT-HWID-HERE-2" goto ACCESS_GRANTED
    goto HWID_FAIL
)

:: Key 3
if "%USER_KEY%"=="P8YW-L3NV-Q7CR-H5SK" (
    if "%HWID%"=="PUT-HWID-HERE-3" goto ACCESS_GRANTED
    goto HWID_FAIL
)

:: No key matched
echo.
echo Invalid Key
pause
exit

:HWID_FAIL
echo.
echo This key is not authorized for this PC
pause
exit

:ACCESS_GRANTED
echo.
echo Access Granted
timeout /t 1 >nul
goto home

:: =========================
:: MENU
:: =========================
:home
cls
title Private
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
