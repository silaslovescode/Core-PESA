@echo off
setlocal EnableDelayedExpansion

rem Define the files
set "templateFile=template.html"
set "outputFile=index.html"
set "inputFile=Credo.txt"

rem Read the first line for the link
set /p linkLine=<"%inputFile%"

rem Create the output HTML file
(
    for /f "delims=" %%i in ('type "%templateFile%"') do (
        set "line=%%i"
        set "line=!line:{{LINK}}=!linkLine!!"
        echo !line!
    )
) > "%outputFile%"

echo index.html created with the link from Credo.txt.
