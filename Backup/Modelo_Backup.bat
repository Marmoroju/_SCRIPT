@ECHO OFF

REM 	Script: Modelo de Backup
REM 	Autor: Marcos Mourao
REM 	Data: 09/03/2024
REM 	Tel.: (22) 998918474

REM 	Argumentos para xcopy /E /C /I /Y 
REM		Mais informações: Abrir o prompt e digitar xcopy /?

REM		/E - Copia diretórios e subdiretórios, incluindo os vazios.
REM		/C - Continua a cópia mesmo se houver erros.
REM		/I - Se o destino não existir e se mais de um arquivo estiver sendo copiado,
REM          assume que o destino deve ser um diretório.
REM 	/Y - Elimina a solicitação de confirmação de que você deseja substituir um
REM          arquivo de destino existente.



REM  Inicio das Variaveis

set ORIGEM=C:\Users\tec-info\Pictures\adianti_builder_ 	
REM set DESTINO=C:\Users\tec-info\Desktop\adianti_builder_
set DESTINO=Y:\SISTEMAS\Segunda-Feira\adianti_builder_
set LOG=C:\Users\tec-info\log_backup.txt

REM  Fim das Variaveis

REM  Inicio da instrucao de Backup	

	xcopy %ORIGEM% %DESTINO% /E /C /I /Y

REM  Fim da instrucao de Backup

REM  Gerador de Log

	@echo BACKUP REALIZADO COM SUCESSO EM %DATE% as %TIME% >> %LOG%
