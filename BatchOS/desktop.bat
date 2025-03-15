@echo off
setlocal enabledelayedexpansion
color 9F
title BatchOS

echo ===================
echo Welcome to BatchOS!
echo ===================
echo If you need any help, just type in "help" to get some.

:loop
set /p line=
if "%line%"=="help" (
    echo All available commands:
    echo help - opens this menu.
    echo open - opens a program, like the terminal.
    echo programs - shows the programs you can open.
) else if "%line%"=="open" (
    set /p program="Enter the name of the program to open (without .bat): "
    
    :: Define the program path inside the programs folder
    set "program=programs\!program!.bat"

    :: Check if the program exists
    if exist "!program!" (
        echo Opening !program!...
        start "" cmd /c "!program!"
        echo Opened !program!!
    ) else (
        echo Error: Program not found in 'programs' folder!
    )
) else if "%line%"=="programs" (
    :: List all .bat files in the 'programs' directory
    echo ===================
    for %%f in (programs\*.bat) do (
        set "filename=%%~nf"
        echo !filename!
    )
    echo ===================
)
goto loop

goto loop