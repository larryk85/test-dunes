@echo off

SET mypath=%~dp0

certutil.exe -urlcache -split -f "https://www.python.org/ftp/python/3.7.4/python-3.7.4-amd64.exe" "%mypath%\python-3.7.4-amd64.exe"

:where python.exe >nul
:if %ERRORLEVEL% EQU 0 (
:  python %mypath%\src\dunes %*
:  ) else (
:  where python3.exe >nul
:  if %ERRORLEVEL% EQU 0 (
:    python3 %mypath%\src\dunes %*
:  ) else (
:    echo "Python/3 was not found, please install and add to PATH."
:	exit /b
:  )
:)