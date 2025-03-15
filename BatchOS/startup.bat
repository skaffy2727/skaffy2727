@echo off
if "%1" neq "min" start /min cmd /c "%~f0" min & exit
cd _sound_
powershell -c (New-Object Media.SoundPlayer "bootup.wav").PlaySync()
cd ..
start desktop.bat