@echo off

:: Apresenta‡Æo e escolha do tipo de c lculo

:inicio
cls

echo Vai ser bem legal fazer uma conta juntos!
echo Para iniciar precisamos definir qual vai ser nosso c lculo!
echo Decida que tipo de conta quer fazer digitando o n£mero referente:
echo 1 - SOMA
echo 2 - SUBTRA€ÇO
echo 3 - MULTIPLICA€ÇO
echo 4 - DIVISÇO
echo 5 - SAIR SEM FAZER CONTA

echo.
:: Defini‡Æo do operador
choice /c "12345" /n /m "Digite sua op‡Æo>"
goto %errorlevel%

cls

:: Calculando a Soma
:1
echo àtima op‡Æo, vamos colocar os n£meros que vamos somar.
echo.
set /p "n1=Digite o primeiro n£mero: "
echo.
set /p "n2=Massa, agora digite o segundo n£mero para finalizarmos o c lculo: "
set /a conta=%n1%+%n2%

echo A soma de %n1% + %n2% = %conta%
set n1=0
set n2=0
set conta=0
echo Aperte enter para voltar ao in¡cio.
pause >nul
goto :inicio

:: Calculando a Subtra‡Æo
:2
echo Se e pra tirar vamos nessa, coloque os n£meros que vamos subtrair.
echo.
set /p "n1=Digite o primeiro n£mero: "
echo.
set /p "n2=Massa, agora digite o segundo numero para finalizarmos o c lculo: "
set /a conta=%n1%-%n2%

echo A subtracao foi %n1% - %n2% = %conta%
set n1=0
set n2=0
set conta=0
echo Aperte enter para voltar ao in¡cio.
pause >nul
goto :inicio

:: Calculando a Multiplica‡Æo
:3
echo Entendi, hora de multiplicar, coloque os n£meros que vamos utilizar.
echo.
set /p "n1=Digite o primeiro n£mero: "
echo.
set /p "n2=Massa, agora digite o segundo n£mero para finalizarmos o c lculo: "
set /a conta=%n1%*%n2%

echo A multiplicacao de %n1% X %n2% = %conta%
set n1=0
set n2=0
set conta=0
echo Aperte enter para voltar ao in¡cio.
pause >nul
goto :inicio

:: Calculando a DivisÆo
:4
echo Entendi, hora de dividir, coloque os n£meros que vamos utilizar.
echo.
set /p "n1=Digite o primeiro n£mero: "
echo.
set /p "n2=Massa, agora digite o segundo n£mero para finalizarmos o c lculo: "
set /a conta=%n1%/%n2%
set /a resto=%n1%%%n2%

echo A divisÆo de %n1% por %n2% = %conta% e sobra %resto%
set n1=0
set n2=0
set conta=0
echo Aperte enter para voltar ao in¡cio.
pause >nul
goto :inicio

:5
msg * Ok, obrigado por vir ate a proxima.
exit
