@echo off

start vysor.exe
TIMEOUT /T 2 /NOBREAK
adb shell "am start -a android.media.action.STILL_IMAGE_CAMERA -W"

