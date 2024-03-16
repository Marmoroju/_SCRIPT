@echo off

set ORIGEM=C:\Users\Marcos\Documentos\"Path of Building" 

set DESTINO_DOMINGO=C:\Users\Marcos\backup_diario\_1_domingo\"Path of Building"	
set DESTINO_SEGUNDA=C:\Users\Marcos\backup_diario\_2_segunda_feira\"Path of Building"
set DESTINO_TERCA=C:\Users\Marcos\backup_diario\_3_terca_feira\"Path of Building"
set DESTINO_QUARTA=C:\Users\Marcos\backup_diario\_4_quarta_feira\"Path of Building"
set DESTINO_QUINTA=C:\Users\Marcos\backup_diario\_5_quinta_feira\"Path of Building"
set DESTINO_SEXTA=C:\Users\Marcos\backup_diario\_6_sexta_feira\"Path of Building"
set DESTINO_SABADO=C:\Users\Marcos\backup_diario\_7_sabado\"Path of Building"

set LOG=C:\Users\Marcos\log_backup.txt

for /f %%i in ('powershell ^(get-date^).DayofWeek') do set dow=%%i
if %dow% == Sunday goto DOMINGO
if %dow% == Monday goto SEGUNDA
if %dow% == Tuesday goto TERCA
if %dow% == Wednesday goto QUARTA
if %dow% == Thursday goto QUINTA
if %dow% == Friday goto SEXTA
if %dow% == Saturday goto SABADO


:DOMINGO 
xcopy %ORIGEM% %DESTINO_DOMINGO% /E /C /I /Y
echo BACKUP DE DOMINGO REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:SEGUNDA 
xcopy %ORIGEM% %DESTINO_SEGUNDA% /E /C /I /Y
echo BACKUP DE SEGUNDA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:TERCA 
xcopy %ORIGEM% %DESTINO_TERCA% /E /C /I /Y
echo BACKUP DE TERÇA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:QUARTA 
xcopy %ORIGEM% %DESTINO_QUARTA% /E /C /I /Y
echo BACKUP DE QUARTA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:QUINTA 
xcopy %ORIGEM% %DESTINO_QUINTA% /E /C /I /Y
echo BACKUP DE QUINTA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:SEXTA 
xcopy %ORIGEM% %DESTINO_SEXTA% /E /C /I /Y
echo BACKUP DE SEXTA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:SABADO 
xcopy %ORIGEM% %DESTINO_SABADO% /E /C /I /Y
echo BACKUP DE SÁBADO REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

exit
