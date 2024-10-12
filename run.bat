@echo off
echo Running batch files...

rem Run each batch file in order
call Credo.bat
call replace.bat
call Core.bat

echo All batch files have been executed.

