@echo off
setlocal enabledelayedexpansion

rem Generate a random 16-digit code
set "code="
for /L %%i in (1,1,16) do (
    set /a "digit=!random! %% 10"
    set "code=!code!!digit!"
)

rem Create the HTML file
(

echo tel:*141*!code!#"
) > Credo.txt
echo HTML file created with code: %code%

