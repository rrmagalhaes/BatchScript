@echo off

set /p "nome=Digite seu nome: "
set /p "sobrenome=Digite seu sobrenome: "
set /p "idade=Digite sua idade: "

set completo=%nome% %sobrenome% 

set data=%date%
set ano=%data:~-4%
set nascido=%ano%-%idade%

cls

echo Oi %completo% , voce tem %idade% anos e nasceu em %nascido% 

pause >nul