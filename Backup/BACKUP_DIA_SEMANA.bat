@echo off

set ORIGEM=C:\Users\Marcos\Documentos\"Path of Building" 	
set DESTINO=C:\Users\Marcos\backup_diario\_7_sabado\"Path of Building"
set LOG=C:\Users\Marcos\log_backup.txt

for /f %%i in ('powershell ^(get-date^).DayofWeek') do set dow=%%i
if %dow% == Monday goto Monday
if %dow% == Tuesday goto Tuesday
if %dow% == Wednesday goto Wednesday
if %dow% == Thursday goto Thursday
if %dow% == Friday goto Friday
if %dow% == Saturday goto Saturday
if %dow% == Sunday goto Sunday

:Sunday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP DE DOMINGO REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:Monday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP DE SEGUNDA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:Tuesday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP DE TERÇA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:Wednesday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP DE QUARTA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:Thursday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP DE QUINTA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:Friday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP DE SEXTA-FEIRA REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:Saturday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP DE SÁBADO REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

exit
