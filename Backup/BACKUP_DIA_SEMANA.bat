@ECHO OFF

REM 	Script: Modelo de Backup Diario e Semanal
REM 	DEFINICAO: O script confere o dia da semana(Sunday[Domingo], Monday[Segunda-Feira]...) e de acordo com o dia
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
REM     DESTINO_*   Path do local onde sera armazenado o backup,
REM                 Se for armazenar em um SERVIDOR LOCAL e este estiver mapeado no proprio computador
REM                 basta adicionar o caminho a partir da LETRA, exemplo, Y:\Path\
REM     LOG         Local de armazenamento do arquivo de log. 

:: Inicio das Variaveis

set ORIGEM=C:\Users\Marcos\Documentos\"Nomes com Espaco" 

set DESTINO_DOMINGO=C:\Users\Marcos\backup_diario\_1_domingo\"Nomes com Espaco"	
set DESTINO_SEGUNDA=C:\Users\Marcos\backup_diario\_2_segunda_feira\BACKUP
set DESTINO_TERCA=C:\Users\Marcos\backup_diario\_3_terca_feira\BACKUP
set DESTINO_QUARTA=C:\Users\Marcos\backup_diario\_4_quarta_feira\BACKUP
set DESTINO_QUINTA=C:\Users\Marcos\backup_diario\_5_quinta_feira\BACKUP
set DESTINO_SEXTA=C:\Users\Marcos\backup_diario\_6_sexta_feira\BACKUP
set DESTINO_SABADO=C:\Users\Marcos\backup_diario\_7_sabado\BACKUP

set LOG=C:\Users\Marcos\log_backup.txt

:: Fim das Variaveis

:: Instrucoes [NAO MODIFICAR]

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
