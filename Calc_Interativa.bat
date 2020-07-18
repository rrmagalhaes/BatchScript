@echo off

:: Apresentação e escolha do tipo de cálculo

echo Vai ser bem legal fazer uma conta juntos!
echo Para iniciar precisamos definir qual vai ser nosso calculo!
echo Decida que tipo de conta quer fazer digitando o numero referente:
echo 1 - SOMA
echo 2 - SUBTRACAO
echo 3 - MULTIPLICACAO
echo 4 - DIVISAO

echo.

set /p "calc=Digite um numero de 1 a 4: "

cls

echo Show, ja temos o tipo de calculo, agora precisamos dos numeros que vamos calcular.
echo.
set /p "n1=Digite o primeiro numero: "
echo.
set /p "n2=Massa, agora digite o segundo numero para finalizarmos o calculo: "


pause >nul