@echo off

:: Apresenta��o e escolha do tipo de c�lculo

:inicio
cls

echo Vai ser bem legal fazer uma conta juntos!
echo Para iniciar precisamos definir qual vai ser nosso c�lculo!
echo Decida que tipo de conta quer fazer digitando o n�mero referente:
echo 1 - SOMA
echo 2 - SUBTRA��O
echo 3 - MULTIPLICA��O
echo 4 - DIVIS�O
echo 5 - SAIR SEM FAZER CONTA

:op1
set /p "operacao=Digite o tipo da opera��o voc� deseja realizar: "

if %operacao% equ 1 (goto :1) else (goto :op2)
:op2
if %operacao% equ 2 (goto :2) else (goto :op3)
:op3
if %operacao% equ 3 (goto :3) else (goto :op4)
:op4
if %operacao% equ 4 (goto :4) else (goto :op5)
:op5
if %operacao% equ 5 (goto :5) else (goto :op1)


echo.
:: Defini��o do operador
if 

cls

:: Calculando a Soma
:1
echo �tima op��o, vamos colocar os n�meros que vamos somar.
echo.
set /p "n1=Digite o primeiro n�mero: "
echo.
set /p "n2=Massa, agora digite o segundo n�mero para finalizarmos o c�lculo: "
set /a conta=%n1%+%n2%

echo A soma de %n1% + %n2% = %conta%
set n1=0
set n2=0
set conta=0
echo Aperte enter para voltar ao in�cio.
pause >nul
goto :inicio

:: Calculando a Subtra��o
:2
echo Se e pra tirar vamos nessa, coloque os n�meros que vamos subtrair.
echo.
set /p "n1=Digite o primeiro n�mero: "
echo.
set /p "n2=Massa, agora digite o segundo numero para finalizarmos o c�lculo: "
set /a conta=%n1%-%n2%

echo A subtracao foi %n1% - %n2% = %conta%
set n1=0
set n2=0
set conta=0
echo Aperte enter para voltar ao in�cio.
pause >nul
goto :inicio

:: Calculando a Multiplica��o
:3
echo Entendi, hora de multiplicar, coloque os n�meros que vamos utilizar.
echo.
set /p "n1=Digite o primeiro n�mero: "
echo.
set /p "n2=Massa, agora digite o segundo n�mero para finalizarmos o c�lculo: "
set /a conta=%n1%*%n2%

echo A multiplicacao de %n1% X %n2% = %conta%
set n1=0
set n2=0
set conta=0
echo Aperte enter para voltar ao in�cio.
pause >nul
goto :inicio

:: Calculando a Divis�o
:4
echo Entendi, hora de dividir, coloque os n�meros que vamos utilizar.
echo.
set /p "n1=Digite o primeiro n�mero: "
echo.
set /p "n2=Massa, agora digite o segundo n�mero para finalizarmos o c�lculo: "
set /a conta=%n1%/%n2%
set /a resto=%n1%%%n2%

echo A divis�o de %n1% por %n2% = %conta% e sobra %resto%
set n1=0
set n2=0
set conta=0
echo Aperte enter para voltar ao in�cio.
pause >nul
goto :inicio

:5
msg * Ok, obrigado por vir at� a pr�xima.
exit
