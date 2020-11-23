:: Renato Magalhães
:: Teste de conexão com internet
:: github.com/rrmagalhaes

@echo off
color 0A
mode con: lines=30 cols=40
title Testando a Internet

::Cria o diretório pingteste que receberá o teste.txt e
::caso o diretório já exista e tenha o teste.txt dentro ele apaga.

del c:\pingteste\teste.txt>nul
mkdir c:\pingteste\>nul
cd "c:\pingteste\"
cls

::Realiza 1 ping no site e armazena o resultado no arquivo teste.txt e
::depois filtra o conteúdo do arquivo e joga a informação em sucesso.txt

:testeping
echo "TESTANDO..."
set resultado=0
ping -n 1 "www.google.com.br" > teste.txt
type teste.txt | find /i "Resposta">sucesso.txt

::Pega apenas a primeira palavra do arquivo sucesso.txt e armazena
::na variável resultado.

for /f "tokens=1" %%a in (sucesso.txt) do (set "resultado=%%a")

::Compara o conteúdo da váriavel com a string Resposta, se true imprime CONEXÃO OK se 
::false, imprime INTERNET CAIU, VERIFIQUE SUA CONEXAO! e retorna pro loop :testeping

if "%resultado%" == "Resposta" (echo "CONEXAO OK" & echo. & goto testeping) else (goto caiu)
:caiu
echo "INTERNET CAIU, VERIFIQUE SUA CONEXAO!"
echo.
goto testeping




