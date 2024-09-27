@echo off
setlocal enabledelayedexpansion

:: Source directory
set "sourceDir=\\RECALBOX\share\neogeo"

:: Destination directory
set "destDir=\\RECALBOX\share\roms\readystream\neogeo"

:: Ensure the destination directory exists
if not exist "%destDir%" (
    mkdir "%destDir%"
)

:: Loop through each file in the source directory
for %%F in ("%sourceDir%\*") do (
    set "fileName=%%~nxF"
    echo Creating empty file: "%destDir%\!fileName!"
    type nul > "%destDir%\!fileName!"
)

echo All files created successfully.
pause
