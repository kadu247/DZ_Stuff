@echo off
set "steamcmdpath=C:\SteamCMD"
set "serverpath=C:\DayzServerMod"
set /p login=Steam Login: 
echo.
set /p pass=Steam Password:
echo.
set /p workshopid=Workshop id:
echo.
set /p modname=Mod folder name:
echo.
%steamcmdpath%\steamcmd +login %login% %pass% +force_install_dir "%serverpath%" +workshop_download_item 221100 %workshopid% validate +quit
move "C:\DayzServerMod\steamapps\workshop\content\221100\%workshopid%" "C:\DayzServerMod\%modname%"
copy "C:\DayzServerMod\%modname%\Keys\*.bikey" "C:\DayzServerMod\keys\"
pause