@echo off

tasklist /FI "IMAGENAME eq vysor.exe" 2>NUL | find /I /N "vysor.exe">NUL
if "%ERRORLEVEL%"=="0" Taskkill /IM vysor.exe /F