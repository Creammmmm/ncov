@echo off
if "%1"=="hide" goto CmdBegin
start mshta vbscript:createobject("wscript.shell").run("""%~0"" hide",0)(window.close)&&exit
:CmdBegin
title upload
tasklist /v /fo csv | findstr /i "upload" >> log.txt
:loop

set d=%date:~0,10%
set t=%time:~0,8%
set currentTime=%time:~0,2%

if %currentTime%==7 (
	echo/ >> log.txt
	call python upload.py -u 111111 -p 111111 -f data/upload.txt >> log.txt
	echo %d% %t% >> log.txt
	ping -n 18000 127.1>nul
	)

if %currentTime%==12 (
	echo/ >> log.txt
	call python upload.py -u 111111 -p 111111 -f data/upload.txt >> log.txt
	echo %d% %t% >> log.txt
	ping -n 18000 127.1>nul
	)

if %currentTime%==18 (
	echo/ >> log.txt
	call python upload.py -u 111111 -p 111111 -f data/upload.txt >> log.txt
	echo %d% %t% >> log.txt
	ping -n 36000 127.1>nul
	)

echo %d% %t% >> log.txt
ping -n 618 127.1>nul

goto loop
pause