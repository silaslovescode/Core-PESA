@echo off
setlocal

rem Set the remote repository URL
set "REMOTE_URL=https://github.com/silaslovescode/Core-PESA.git"

rem Initialize the repository if it's not already done
if not exist ".git" (
    git init
)

rem Add all changes to staging
git add .

rem Commit the changes
git commit -m "Add all code"

rem Check if the remote is already set
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    git remote add origin %REMOTE_URL%
)

rem Push the changes to the main branch
git push -u origin main

echo All code has been added and pushed to the main branch.

