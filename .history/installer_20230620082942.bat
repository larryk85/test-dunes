@echo off

SET mypath=%~dp0

where docker.exe >nul
if %ERRORLEVEL% NEQ 0 (
   bitsadmin /transfer myDownload /download /priority normal "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe" %mypath%\docker-install.exe
)