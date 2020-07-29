@echo off
:: Teste internet

del c:\pingteste\teste.txt
mkdir c:\pingteste\
cd "c:\pingteste\"

echo "TESTANDO..."
::setlocal enabledelayedexpansion
:testeping
set resultado=0
ping -n 1 "www.google.com.br" > teste.txt
type teste.txt | find /i "Resposta">sucesso.txt

for /f "tokens=1" %%a in (sucesso.txt) do (set "resultado=%%a")

echo %resultado%

if "%resultado%" == "Resposta" (echo "CONEXAO OK" & goto testeping) else (goto caiu)
:caiu
echo "INTERNET CAIU, VERIFIQUE SUA CONEXAO!"
goto testeping




