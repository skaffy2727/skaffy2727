@echo off
setlocal enabledelayedexpansion
title Writr - a text editor

echo Enter your text (type END to save, RESET to clear):

set /p file="What file do you want to modify? "
echo. > %file%

:loop
set /p line=
if /i "%line%"=="END" goto done
if /i "%line%"=="RESET" echo. > %file%
echo %line% >> %file%
goto loop

:done
echo Text saved to %file%!
