@echo off

call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x64
cd build
cl -Zi ..\code\win32_handmade.cpp user32.lib gdi32.lib
