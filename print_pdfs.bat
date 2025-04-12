@echo off
setlocal enabledelayedexpansion

:: Get the directory where the batch file is located
set "PDF_DIR=%~dp0"

:: Loop through all PDF files in that directory
for %%F in ("%PDF_DIR%\*.pdf") do (
    echo Printing: %%F
    start /min "" /wait "%%F" /p
)

echo All PDFs in "%PDF_DIR%" have been sent to the printer.
pause
