@echo off
title Recuperation des fichiers

:: --- Affichage de l'écran de l'android
:: set PLAYER_PATH="C:\Users\djerb\Desktop\SCan3D\ffmpeg\bin\ffplay.exe"
:: set PLAYER_PATH="C:\Program Files (x86)\VideoLAN\VLC\vlc.exe"
:: adb shell screenrecord --size=400x300 --output-format=h264 - | %PLAYER_PATH% - 
:: adb shell "while true; do screenrecord --output-format=h264 --time-limit 5 -; done" | %PLAYER_PATH%
:: adb shell screenrecord --output-format=h264 - | %PLAYER_PATH% 

:: --- création d'un dossier d'export
mkdir Scans

set HOST_DIR=%~dp0Scans
set DEVICE_DIR=/sdcard/DCIM/Camera/
set EXTENSION=".jpg"
set nombre_de_fichiers=0
set compteur=0
set nombre_de_photos_prises=2

:: adb shell "cd /sdcard/DCIM/Camera/; ls;"

:: --- Calcul du nombre de fichiers

for /f %%i in ('adb shell ls %DEVICE_DIR%') do (
	set /a nombre_de_fichiers+=1
)

:: --- Récupération des dernières photos dans le dossier

set /a indice_premiere_image=%nombre_de_fichiers%-%nombre_de_photos_prises%
:: active la possibilité d'incrémenter des variables
setlocal ENABLEDELAYEDEXPANSION

for /f %%i in ('adb shell ls %DEVICE_DIR%') do (
	set /a compteur+=1	
	IF !compteur! GEQ %indice_premiere_image% echo %%i
)
endlocal



:: pause