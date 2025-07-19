@echo off

chcp 65001 >nul
title [MAS Downloader] by Ju4qa
color 03
mode con:cols=90 lines=20

echo Download the latest version...
echo.
timeout /t 1 >nul
curl -L https://github.com/massgravel/Microsoft-Activation-Scripts/archive/refs/heads/master.zip -o mas.zip
echo.
timeout /t 1 >nul
cls

echo Extracting the archive...
echo.
timeout /t 1 >nul
tar -xf mas.zip
echo.
timeout /t 1 >nul
cls

echo File extraction...
timeout /t 1 >nul
move "%CD%\Microsoft-Activation-Scripts-master\MAS\All-In-One-Version-KL\MAS_AIO.cmd" "%CD%"
timeout /t 1 >nul
cls

echo Deleting temporary files...
timeout /t 1 >nul
rmdir "%CD%\Microsoft-Activation-Scripts-master" /s /q
del /f /q "%CD%\mas.zip"
timeout /t 1 >nul
cls

echo Activator downloaded! Run it?
echo.
echo 1. Yes
echo 2. No (close the program)
echo.
choice /c 12 /n /m ""

if errorlevel 2 exit
if errorlevel 1 powershell -Command "Start-Process '%CD%/MAS_AIO.cmd' -Verb RunAs"

exit



