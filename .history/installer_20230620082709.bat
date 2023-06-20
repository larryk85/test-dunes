@echo off

SET mypath=%~dp0

where docker.exe >nul
if %ERRORLEVEL% NEQ 0 (
   bitsadmin /transfer myDownload /download /priority normal https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe?utm_source=docker&utm_medium=webreferral&utm_campaign=dd-smartbutton&utm_location=module&_gl=1*1ds0wbk*_ga*MTcxNjI4NDgyMS4xNjg3MjI1Nzk5*_ga_XJWPQMJYHQ*MTY4NzI2Mzk0NS4zLjEuMTY4NzI2Mzk0Ni41OS4wLjA. %mypath%\docker-install.exe
)