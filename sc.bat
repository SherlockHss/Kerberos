@echo off
setlocal

REM Notice how there are no spaces between the param and the equals sign
set CREATE_OPTIONS= type= kernel start= demand error= ignore DisplayName= srv3
sc.exe create srv3 binpath= %windir%\System32\drivers\srv3.sys %CREATE_OPTIONS%
sc.exe description srv3 "SDDL subsystem for Windows Resource Protected file"

endlocal
