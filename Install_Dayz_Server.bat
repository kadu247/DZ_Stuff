@echo off
set "steamcmdpath=C:\SteamCMD"
set "serverpath=C:\DayzServerMod"
set /p login=Steam Login: 
echo.
set /p pass=Steam Password:
echo.
%steamcmdpath%\steamcmd +login %login% %pass% +force_install_dir "%serverpath%" +app_update 223350 validate +quit