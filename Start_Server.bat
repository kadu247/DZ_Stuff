@echo off
:start
::Server name (This is just for the bat file)
set serverName=DayZ server
::Server files location
set serverLocation="C:\DayzServerMod"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZ.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=2
::Sets Profiles Folder
set profiles=Server1
::Mods ex: -mod=@mod1;@mod2;@mod3
set mod=@CF;@Community-Online-Tools;@Mod_Test
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "DZSALModServer.exe" -config=%serverConfig% -port=%serverPort% -mod=%mod% "DayZServer_x64.exe" -profiles=%profiles% -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
taskkill /im DZSALModServer.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start
