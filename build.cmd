@echo off
:: set current pad so we can keep the package we are building
pushd "%~dp0"
SET SRCDIR=
for /f "delims=" %%a in ('cd') do @set SRCDIR=%%a
echo EEDK start path: %SRCDIR%

:: go one folder up where we have the EEDK.exe file
cd ..
:: remove old package (yes you can not put any zip in the folder)
del /f "%SRCDIR%\*.zip"
:: remove old build folder
for /d %%G in ("%SRCDIR%\Build-*") do rmdir /s /q "%%~G"

:: call the EEDK.exe to build the package with the config file in the folder
.\EEDK.exe -Settings:%SRCDIR%\config.eedk

:: upload package to ePO server using EEDK.exe
:: remove build folder
for /d %%G in ("%SRCDIR%\Build-*") do rmdir /s /q "%%~G"

set /p=Hit ENTER to close...
 