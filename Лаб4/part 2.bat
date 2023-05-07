@echo off
setlocal
IF "%1"=="" (
    echo Function requires 3 parameters.
    echo source
    echo destination
    echo file_name
    echo Exit code 0
) ELSE (
set "source=%~1"
set "destination=%~2"


attrib "%file_name%" | find "H" >nul
if %errorlevel% equ 0 (
    echo Файл %file_name% имеет атрибут "скрытый".
)

attrib "%file_name%" | find "R" >nul
if %errorlevel% equ 0 (
    echo Файл %file_name% имеет атрибут "только для чтения".
)

attrib "%file_name%" | find "A" >nul
if %errorlevel% equ 0 (
    echo Файл %file_name% имеет атрибут "архивный".
)


move "%source%" "%destination%"

echo Exit code 0
)
endlocal
