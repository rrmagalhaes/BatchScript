@echo off

schtasks /create /TN "Teste01" /TR "C:\Users\Asus G74sx\Documents\Projetos\BatchScript\Calc_Interativa.bat" /SC WEEKLY /D * /ST 06:30 /NP /RI 180 /DU 16:00 /K 
pause 