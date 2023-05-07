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

move "%source%" "%destination%"

echo Exit code 0
)
endlocal