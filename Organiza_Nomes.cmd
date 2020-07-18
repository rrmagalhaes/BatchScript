@echo off

set /p "nome=Digite seu nome: "
set /p "sobrenome=Digite seu sobrenome: "
set /p "idade=Digite sua idade: "

set completo=%nome% %sobrenome% 

set data=%date%
set ano=%data:~-4%
set /a nascido=%ano%-%idade%-1

cls

echo Oi %completo% , voce tem %idade% anos e nasceu no ano de %nascido%! 

pause >nul