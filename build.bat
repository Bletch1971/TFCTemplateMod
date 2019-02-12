@echo off

set WORKDIR=%CD%

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.

cd /d "%DIRNAME%"

echo Cleaning Build Folder
IF EXIST build\classes del build\classes /F /S /Q
IF EXIST build\sources del build\sources /F /S /Q
IF EXIST build\resources del build\resources /F /S /Q

call gradlew.bat build

cd /d "%WORKDIR%"

pause