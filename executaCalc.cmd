set /a cont=1

:start

echo Execução %cont% - %time%>>logexecute.txt

C:\Windows\System32\calc.exe

set /a cont=cont+1

TIMEOUT /t 10800 /nobreak >nul 

goto start
