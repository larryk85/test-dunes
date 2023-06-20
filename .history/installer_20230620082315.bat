@echo off

SET mypath=%~dp0

where docker.exe >nul
if %ERRORLEVEL% EQU 0 (
  docker run -it --rm -v %mypath%:/dunes -w /dunes python:3.7.4-slim python src/dunes %*
  exit /b
) else (
   where winget.exe >nul
   bitsadmin /transfer myDownload /download /priority normal https://www.python.org/ftp/python/3.7.4/python-3.7.4-amd64.exe %mypath%\python-3.7.4-amd64.exe
)

bitsadmin /transfer myDownload /download /priority normal https://www.python.org/ftp/python/3.7.4/python-3.7.4-amd64.exe %mypath%\python-3.7.4-amd64.exe

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