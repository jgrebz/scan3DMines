@echo off
title Recuperation des fichiers


:: --- création d'un dossier d'export
cd ..
if not exist Scans mkdir Scans

set DEVICE_DIR="/sdcard/DCIM/Camera/"
set CMD="ls -1 %DEVICE_DIR% | tail -n-1"

setlocal ENABLEDELAYEDEXPANSION

cd Scans
set name='adb shell %CMD%'
set folder=!name:~4,18!
if NOT "%1" == "" set folder="%1"
if not exist !folder! (mkdir !folder!)
cd !folder!
adb pull "%DEVICE_DIR%!name!" "pic8.jpg"

rename pic8.jpg T.jpg

endlocal



:: pause
