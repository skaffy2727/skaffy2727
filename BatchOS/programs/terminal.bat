@echo off
cls
setlocal enabledelayedexpansion
title BatchOS Terminal

set currentDir=%cd%
color 0A

echo BatchOS terminal started up.
echo What would you like to do?
echo Perhaps type "help"?
:loop
set /p command="BatchOS> "
if "%command%"=="exit" (
    echo Goodbye!
    timeout /t 1 >nul
    exit
)
if "%command%"=="cls" cls
if "%command%"=="help" (
    echo All available commands:
    echo.
    echo cls - Clears the screen
    echo exit - Exits the terminal
    echo help - Displays this menu
)
goto loop

goto loop