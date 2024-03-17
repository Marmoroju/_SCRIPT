@ECHO OFF

REM 	Script: Modelo de Backup Diario e Semanal
REM 	DEFINICAO: O script confere o dia da semana(0[Domingo], 1[Segunda-Feira]...) e de acordo com o dia
REM              ele armazana na variavel %dow% [DayofWeek] e caso satisfaca aquela condicao
REM              segue para o estagio do comando (goto) onde sera executado uma cadeia de codigos.

REM 	Autor: Marcos Mourao
REM 	Data: 16/03/2024
REM 	Tel.: (22) 998918474

REM 	Argumentos para xcopy /E /C /I /Y 
REM		Mais informações: Abrir o prompt e digitar xcopy /?

REM		/E - Copia diretórios e subdiretórios, incluindo os vazios.
REM		/C - Continua a cópia mesmo se houver erros.
REM		/I - Se o destino não existir e se mais de um arquivo estiver sendo copiado,
REM        assume que o destino deve ser um diretório.
REM 	/Y - Elimina a solicitação de confirmação de que você deseja substituir um
REM        arquivo de destino existente.


REM     ORIGEM      Path do arquivo ou diretorio a ser copiado(Origem do Backup)
REM     DESTINO_*   Path do local onde sera armazenado o backup
REM     DESTINO     Se for armazenar em um servidor local e este estiver mapeado no proprio computador
REM                 basta adicionar o caminho a partir da LETRA, exemplo, Y:\Path\
REM     LOG         Local de armazenamento do arquivo de log. 

:: Inicio das Variaveis

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
