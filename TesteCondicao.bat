set a=outro
set b=outro

if %a% equ null ( if %b% equ null (goto cria3) else (goto teste2))
:teste2
if %a% equ null ( if not %b% equ null (goto cria2) else (goto teste3))
:teste3
if not %a% equ null ( if %b% equ null (goto cria1))
goto cria4

:cria1
echo valida1
pause
:cria2
echo valida2
pause
:cria3
echo valida3
pause
:cria4
echo valida4
pause


