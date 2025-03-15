@echo off
title Calculator

color F0
set ans=0
:loop
set /p num1="Number 1/ans: "
set /p op="Operator (+, -, *, /): "
set /p num2="Number 2/ans: "
if "%num1%"=="ans" (
    if "%num2%"=="ans" (
        set /a ans=%ans% %op% %ans%
    ) else (
        set /a ans=%ans% %op% %num2%
    )
) else (
    if "%num2%"=="ans" (
        set /a ans=%num1% %op% %ans%
    ) else (
        set /a ans=%num1% %op% %num2%
    ) 
)
echo Result: %ans%
goto loop

goto loop