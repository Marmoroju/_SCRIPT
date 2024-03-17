@echo off

:: set ORIGEM=C:\Users\Marcos\Documentos\"Path of Building" 
set ORIGEM=C:\Users\Marcos\BATCH_SCRIPT

set DESTINO_DOMINGO=C:\Users\Marcos\backup_diario\_1_domingo\"Path of Building"	
set DESTINO_SEGUNDA=C:\Users\Marcos\backup_diario\_2_segunda_feira\"Path of Building"
set DESTINO_TERCA=C:\Users\Marcos\backup_diario\_3_terca_feira\"Path of Building"
set DESTINO_QUARTA=C:\Users\Marcos\backup_diario\_4_quarta_feira\"Path of Building"
set DESTINO_QUINTA=C:\Users\Marcos\backup_diario\_5_quinta_feira\"Path of Building"
set DESTINO_SEXTA=C:\Users\Marcos\backup_diario\_6_sexta_feira\"Path of Building"
set DESTINO_SABADO=C:\Users\Marcos\backup_diario\_7_sabado\BAT

set LOG=C:\Users\Marcos\log_backup.txt

for /f %%i in ('cmd /c wmic path win32_localtime get dayofweek^|findstr [0-6]') do set dow=%%i
if %dow% == 0 goto DOMINGO
if %dow% == 1 goto SEGUNDA
if %dow% == 2 goto TERCA
if %dow% == 3 goto QUARTA
if %dow% == 4 goto QUINTA
if %dow% == 5 goto SEXTA
if %dow% == 6 goto SABADO

:DOMINGO 
xcopy %ORIGEM% %DESTINO_DOMINGO% /E /C /I /Y
echo BACKUP DE DOMINGO REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%
exit

:SEGUNDA 
xcopy %ORIGEM% %DESTINO_SEGUNDA% /E /C /I /Y
echo BACKUP DE SEGUNDA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%
exit

:TERCA 
xcopy %ORIGEM% %DESTINO_TERCA% /E /C /I /Y
echo BACKUP DE TERÇA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%
exit

:QUARTA 
xcopy %ORIGEM% %DESTINO_QUARTA% /E /C /I /Y
echo BACKUP DE QUARTA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%
exit

:QUINTA 
xcopy %ORIGEM% %DESTINO_QUINTA% /E /C /I /Y
echo BACKUP DE QUINTA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%
exit

:SEXTA 
xcopy %ORIGEM% %DESTINO_SEXTA% /E /C /I /Y
echo BACKUP DE SEXTA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%
exit

:SABADO 
xcopy %ORIGEM% %DESTINO_SABADO% /E /C /I /Y
echo BACKUP DE SÁBADO REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%
exit
