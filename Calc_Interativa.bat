@echo off

:: Apresentação e escolha do tipo de cálculo

:inicio

echo Vai ser bem legal fazer uma conta juntos!
echo Para iniciar precisamos definir qual vai ser nosso calculo!
echo Decida que tipo de conta quer fazer digitando o numero referente:
echo 1 - SOMA
echo 2 - SUBTRACAO
echo 3 - MULTIPLICACAO
echo 4 - DIVISAO
echo 5 - SAIR SEM FAZER CONTA

echo.
:: Deinifição do operador
choice /c "12345" /n /m 
goto %errorlevel%

cls

:: Soma
:1
echo Otima opcao, vamos colocar os numeros que vamos somar.
echo.
set /p "n1=Digite o primeiro numero: "
echo.
set /p "n2=Massa, agora digite o segundo numero para finalizarmos o calculo: "
set /a soma=%n1%+%n2%

echo A soma de %n1% + %n2% = %soma%
 
pause >nul