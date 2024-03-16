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

:Monday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP de %dow% REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:Tuesday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP de %dow% REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:Wednesday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP de %dow% REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:Thursday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP de %dow% REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:Friday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP de %dow% REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:Saturday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP de %dow% REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

:Sunday 
xcopy %ORIGEM% %DESTINO% /E /C /I /Y
echo BACKUP de %dow% REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%

pause
