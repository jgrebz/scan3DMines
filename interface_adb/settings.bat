@echo off

:: à régler potentiellement, attention valeurs adaptées à l'écran du smartphone client


:: ouvre les options
adb shell "input tap 1282 2181"
timeout /T 1 /NOBREAK > NUL
:: choisit le mode pro
adb shell "input tap 1286 921"
timeout /T 1 /NOBREAK > NUL
:: ouvre les réglages
adb shell "input tap 1285 1961"
:: gère les couleurs
adb shell "input tap 712 649"
:: gère l'iso
adb shell "input tap 429 1273"
:: gère la durée d'exposition
adb shell "input tap 1064 1027"
:: gère la luminosité
adb shell "input tap 217 1615"
