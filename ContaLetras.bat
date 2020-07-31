@echo off
setlocal enabledelayedexpansion

:inicio
echo Digitige o texto que quer contar
set /p texto=%*
set /a cont=0
set /a s=0

:main
if "!texto:~%cont%,1!" equ " " (
    set /a s+=1
)

if "!texto:~%cont%,1!" neq "" (
    set /a cont+=1 & goto main
)
set /a letras= %cont% - %s%

echo Quantidade de letras = %letras%

goto inicio


