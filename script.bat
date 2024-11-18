::head
:MAIN
Title WIP
color 0f
echo you must wait..
set /p Text=
if /i %Text%== DevMod goto Dev
if /i not %Text%== DevMod goto MAIN
::End Head






























































































:: DEVELOPER OPTIONS

:Dev
cls
color 03
Title WIP Developer mode
echo (type Back to exit Developer mode)
echo Develper Options:
echo see executable script (type exescrpt)
echo emulate errors (type err)
set /p DEVO=Dev:
if /i %DEVO%== Back goto MAIN
if /i %DEVO%== exescrpt goto exescript
if /i %DEVO%== err goto ERRORdev
if /i not %DEVO%== Back.exescrpt.err goto Dev

:ERRORdev
cls
echo ERRORS:
echo test error (type test)
set /p ERR=
if /i %ERR%== test goto ERR1
if /i not %ERR%== test goto ERRORdev

:ERR1
cls
color 0c
title ERROR n.1
echo this is a test...
pause >nul
goto main

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


::END