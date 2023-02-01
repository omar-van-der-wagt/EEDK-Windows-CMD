:: 2023-02-01 Omar van der Wagt
@echo off

del %temp%\EEDK_script.log

%* 1> %temp%\EEDK_script.log 2>&1

Exit /B 0
