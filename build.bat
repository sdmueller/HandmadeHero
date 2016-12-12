@echo off

if      "%1" == " "      set Platform=x86

if  /i  "%1" == "x86"       set Platform=x86
if  /i  "%1" == "x86_amd64" set Platform=x86_amd64
if  /i  "%1" == "x86_x64"   set Platform=x86_amd64
if  /i  "%1" == "x86_arm"   set Platform=x86_arm
if  /i  "%1" == "amd64"     set Platform=amd64
if  /i  "%1" == "amd64_x86" set Platform=amd64_x86
if  /i  "%1" == "amd64_arm" set Platform=amd64_arm
if  /i  "%1" == "x64"       set Platform=amd64
if  /i  "%1" == "x64_x86"   set Platform=amd64_x86
if  /i  "%1" == "x64_arm"   set Platform=amd64_arm
if  /i  "%1" == "arm"       set Platform=arm

if "%Platform%" == " " goto :err

call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" %Platform%

if not exist build\%Platform% mkdir build\%Platform%
cd build\%Platform%

cl -Zi ..\code\win32_handmade.cpp user32.lib gdi32.lib
exit %errorlevel%

:err
echo Error: no valid platform selected
exit 1
