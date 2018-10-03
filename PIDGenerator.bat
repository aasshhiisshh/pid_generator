@echo off
rem this is for PID Store
set tab=	
set cmd=%*
set dir=C:\
set pid=notfound
for /F "usebackq tokens=1,2 delims=;=%tab% " %%i in (
    `wmic process call create '%cmd%'^, '%dir%'`
) do (
    if %%j gtr 0 (
		set pid=%%j
    )
)
set %~1=%pid%
echo %pid%
