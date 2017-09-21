@echo off
title Recuperation des fichiers


:: --- création d'un dossier d'export
set /p DEVICE_DIR= <DEVICE_DIR.txt
cd ..
if not exist Scans mkdir Scans

set CMD="ls -1 %DEVICE_DIR% | tail -n-1"

setlocal ENABLEDELAYEDEXPANSION

cd Scans
for /f %%i in ('adb shell %CMD%') do set name=%%i
set folder=!name:~4,18!
if NOT "%1" == "" set folder="%1"
if not exist !folder! (mkdir !folder!)
cd !folder!
adb pull "%DEVICE_DIR%!name!" "pic8.jpg"

rename pic8.jpg "%2.jpg"

endlocal



:: pause
