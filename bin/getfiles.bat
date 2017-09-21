@echo off
title Recuperation des fichiers


:: --- création d'un dossier d'export
set /p DEVICE_DIR= <DEVICE_DIR.txt
cd ..
if not exist Scans mkdir Scans

set CMD="ls -1 %DEVICE_DIR% | tail -n-8"
::set EXTENSION=".jpg"
::set nombre_de_fichiers=0
set compteur=0
::set nombre_de_photos_prises=2

:: adb shell "cd /sdcard/DCIM/Camera/; ls;"

:: --- Calcul du nombre de fichiers

::for /f %%i in ('adb shell ls %DEVICE_DIR%') do (
::	set /a nombre_de_fichiers+=1
::)

:: --- Récupération des dernières photos dans le dossier

::set /a indice_premiere_image=%nombre_de_fichiers%-%nombre_de_photos_prises%
:: active la possibilité d'incrémenter des variables
setlocal ENABLEDELAYEDEXPANSION

cd Scans
for /f %%i in ('adb shell %CMD%') do (
	IF !compteur! == 0 (
	   set name=%%i
	   set folder=!name:~4,18!
	   if NOT "%1" == "" set folder="%1"
	   if not exist !folder! (mkdir !folder!)
	   cd !folder!
	   )
	adb pull "%DEVICE_DIR%%%i" "pic!compteur!.jpg"
	set /a compteur+=1)

rename pic0.jpg E.jpg
rename pic1.jpg N.jpg
rename pic2.jpg W.jpg
rename pic3.jpg S.jpg
rename pic4.jpg NE.jpg
rename pic5.jpg NW.jpg
rename pic6.jpg SW.jpg
rename pic7.jpg SE.jpg

endlocal



:: pause
