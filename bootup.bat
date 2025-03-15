@echo off
if "%1" neq "min" start /min cmd /c "%~f0" min & exit
cd BatchOS
call startup.bat