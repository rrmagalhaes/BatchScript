
del dt.txt

For /f "tokens=1-4 delims=/ " %%a in ('date /t') do (
set day=%%a
set month=%%b
set year=%%c)

set /a year=%year% * 360
set /a month=%month% * 30
set /a day=%day%

set /a somaIni=%year% + %month% + %day% - 7

echo %somaIni%

::Verificar data inclusão
set /A dtArray=1
set /A objectArray=0

:dt
echo | jq -r ".[%dtArray%]" cads.json>dt.json
set /p dataJson=<dt.json

IF "%dataJson%" EQU "null" ( goto continue) else ( goto objectArray)

:objectArray
echo | jq -r ".[%objectArray%]" dt.json>dt2.json
echo | jq -r ".produto.dataInclusao" dt2.json>dt.txt
set /p dtInclusao=<dt.txt

IF "%dtInclusao%" NEQ "null" ( goto compara) else ( goto dtArray)

:dtArray
del dt.json
del dt2.json
del dt.txt
del iProd.json
del iProd2.json

set /A objectArray=0
set /A dtArray=%dtArray%+1
goto dt

:compara
set ano=%dtInclusao:~0,4%
set /a ano=%ano% * 360
set mes=%dtInclusao:~5,2%
set /a mes=%mes% * 30
set dia=%dtInclusao:~8,2%
set /a dia=%dia% * 1

set /a somaInclude=%ano% + %mes% + %dia%
echo %somaInclude%

if %somaInclude% gtr %somaIni% ( goto incluirProd) else ( goto sairObject)

:incluirProd
echo | jq -r ".[%dtArray%]" cads.json>iProd.json
echo | jq -r ".[%objectArray%]" iProd.json>iProd2.json
echo | jq -r ".produto | { codigo_de_barras: .gtin, descricao: .descricao}" iProd2.json >> cadprodutos.json

:sairObject
set /A objectArray=%objectArray%+1
goto objectArray

:continue
pause


