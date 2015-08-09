@echo off
rem
rem Ejemplo de manejo de la fecha y hora actual - v2014-02-05
rem

chcp 1252 > NUL

setlocal


set FECHA_ACTUAL=%DATE%
set HORA_ACTUAL=%TIME%

set ANO=%FECHA_ACTUAL:~6,4%
set MES=%FECHA_ACTUAL:~3,2%
set DIA=%FECHA_ACTUAL:~0,2%

set HORA=%HORA_ACTUAL:~0,2%
set MINUTOS=%HORA_ACTUAL:~3,2%
set SEGUNDOS=%HORA_ACTUAL:~6,2%
set CENTESIMAS=%HORA_ACTUAL:~9,2%

rem Si la hora tiene un s�lo d�gito, reemplazamos el espacio inicial por cero
set HORA=%HORA: =%
if %HORA% LSS 10 set HORA=0%HORA%

echo Fecha: %FECHA_ACTUAL%
echo Hora: %HORA_ACTUAL%
echo.
echo D�a: %DIA%
echo Mes: %MES%
echo A�o: %ANO%
echo.
echo Hora: %HORA%
echo Minutos: %MINUTOS%
echo Segundos: %SEGUNDOS%
echo Cent�simas: %CENTESIMAS%
echo.
echo Ejemplo de nombre de archivo: %APPDATA%\Foo\bar %ANO%-%MES%-%DIA%.log
echo Ejemplo de l�nea para log: [%ANO%-%MES%-%DIA% %HORA%:%MINUTOS%:%SEGUNDOS%] Error: se ha ca�do la junta de la tr�cola 

endlocal

echo.
pause
