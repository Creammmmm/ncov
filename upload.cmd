@echo off
title upload
:loop
set d=%date:~0,10%
set t=%time:~0,8%
echo %d% %t%
ping -n 18037 127.1>nul
call python upload.py -u 11111111 -p 11111111 -f data/upload.txt
goto loop
pause