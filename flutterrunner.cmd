@echo off
rem — get the folder this .cmd lives in
set "SCRIPT_DIR=%~dp0"

rem — invoke the PowerShell script with all passed arguments
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%SCRIPT_DIR%generate_structure.ps1" %*
