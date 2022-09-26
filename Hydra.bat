@echo off
set count=0
:loopstart
cls
color 0a
set /a count+=1
call :hydrafunc
set /p attack=How do you attack?:
if "%attack%" neq "nothing" (goto :loopstart) else (goto :eof)

:hydrafunc
setlocal
set hydraheads=0
:createhydraheadloopstart
call type "hydra head.txt"
set /a hydraheads+=1
if %hydraheads% lss %count% goto :createhydraheadloopstart
endlocal
