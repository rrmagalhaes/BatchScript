COLOR 0A

del ACHEI.txt
set count=1

:start
set van=%count%.json
set string=7891224986439
find "%string%" %van% 
::>> logBusca.txt
if %errorlevel% == 0 ( goto achei) else ( goto continue)

:achei

echo VALOR ENCONTRADO EM %count%.json>>ACHEI.txt

:continue

set /a count+=1
echo %count%

if exist %count%.json ( goto start)

if exist ACHEI.txt ( start ACHEI.txt)

exit