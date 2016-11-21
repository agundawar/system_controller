@echo off
SET app=%1
if not defined app (SET app="")
echo Program checking application %app%
if ("%app%" == "") (GOTO :exit) ELSE (GOTO :restart)

:restart
@tasklist /fi "IMAGENAME eq %1" 2>NUL | find /i /n "%1" > NUL
@if "%ERRORLEVEL%"=="0" (goto :running)
@start %1 >nul
@echo Program restarted
@goto exit

:running
@echo Program is already running
@goto exit 

:exit
@echo Program exits