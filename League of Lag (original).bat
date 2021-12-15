@echo off
:mainscript
color f
set counter=0
set failure=0
set lagpkg=0
set IP=.leagueoflegends.net
title TEST DE LAG PARA LOL DE: ALEXANDER URZUA
echo.
echo.
echo TECLEA LA REGION DEL SERVIDOR AL QUE DESEAS CONECTARTE [ LAN - LAS - NA ]
echo.
SET /P LOCALE=
:run
FOR /F "tokens=1-9 delims==< " %%a IN ('PING -w 322 -n 1 %LOCALE%%IP%') DO IF "%%h"=="TTL" SET RESPONSE=%%g
set lag=%RESPONSE:~0,-2%
set /a counter+=1
set /a toping+=%lag%
if %counter%==50000 goto rewind
if /i %lag% LEQ 80 goto god
if /i %lag% LEQ 99 goto good
if /i %lag% LEQ 120 goto stable
if /i %lag% LEQ 150 goto laggy
if /i %lag% LEQ 190 goto lag
if /i %lag% LEQ 250 goto lagger
if /i %lag% LEQ 320 goto shit
if /i %lag% LEQ 321 goto fucknoplay
if /i %lag% GEQ 321 set /a failure+=1
goto run

:rewind
set counter=0
set failure=0
set average=0
set toping=0
set lagpkg=0
goto run

:god
cls
color b
echo.
echo.
echo.
echo        [Medidor de LAG]
echo.
echo.
echo ²²²²°°°°°°°°°°°°°°°°°°°°°°°°°°°°
echo ²²²²°°°°°°°°°[%lag%]°°°°°°°°°°°°°°°
echo ²²²²°°°°°°°°°°°°°°°°°°°°°°°°°°°°
set/a average=%toping%/%counter%
echo.
echo TIEMPO PROMEDIO   = %average%MS
echo.
echo PAQUETES ENVIADOS = %counter% / 50000
echo.
echo PAQUETES FALLIDOS = %failure%
echo.
echo PAQUETES LAGEADOS = %lagpkg%
echo.
goto run

:good
cls
color a
echo.
echo.
echo.
echo        [Medidor de LAG]
echo.
echo.
echo ²²²²²²²²°°°°°°°°°°°°°°°°°°°°°°°°
echo ²²²²²²²²°°°°°[%lag%]°°°°°°°°°°°°°°°
echo ²²²²²²²²°°°°°°°°°°°°°°°°°°°°°°°°
set/a average=%toping%/%counter%
echo.
echo TIEMPO PROMEDIO   = %average%MS
echo.
echo PAQUETES ENVIADOS = %counter% / 50000
echo.
echo PAQUETES FALLIDOS = %failure%
echo.
echo PAQUETES LAGEADOS = %lagpkg%
echo.
goto run

:stable
cls
color a
echo.
echo.
echo.
echo        [Medidor de LAG]
echo.
echo.
echo ²²²²²²²²²²²²°°°°°°°°°°°°°°°°°°°°
echo ²²²²²²²²²²²²°[%lag%]°°°°°°°°°°°°°°
echo ²²²²²²²²²²²²°°°°°°°°°°°°°°°°°°°°
set/a average=%toping%/%counter%
echo.
echo TIEMPO PROMEDIO   = %average%MS
echo.
echo PAQUETES ENVIADOS = %counter% / 50000
echo.
echo PAQUETES FALLIDOS = %failure%
echo.
echo PAQUETES LAGEADOS = %lagpkg%
echo.
goto run


:laggy

cls
set /a lagpkg+=1
color e
echo.
echo.
echo.
echo        [Medidor de LAG]
echo.
echo.
echo ²²²²²²²²²²²²²²²²°°°°°°°°°°°°°°°°
echo ²²²²²²²²²²²²²[%lag%]°°°°°°°°°°°°°°
echo ²²²²²²²²²²²²²²²²°°°°°°°°°°°°°°°°
set/a average=%toping%/%counter%
echo.
echo TIEMPO PROMEDIO   = %average%MS
echo.
echo PAQUETES ENVIADOS = %counter% / 50000
echo.
echo PAQUETES FALLIDOS = %failure%
echo.
echo PAQUETES LAGEADOS = %lagpkg%
echo.
goto run

:lag
set /a lagpkg+=1
cls
color e
echo.
echo.
echo.
echo        [Medidor de LAG]
echo.
echo.
echo ²²²²²²²²²²²²²²²²²²²²°°°°°°°°°°°°
echo ²²²²²²²²²²²²²[%lag%]²²°°°°°°°°°°°°
echo ²²²²²²²²²²²²²²²²²²²²°°°°°°°°°°°°
set/a average=%toping%/%counter%
echo.
echo TIEMPO PROMEDIO   = %average%MS
echo.
echo PAQUETES ENVIADOS = %counter% / 50000
echo.
echo PAQUETES FALLIDOS = %failure%
echo.
echo PAQUETES LAGEADOS = %lagpkg%
echo.
goto run

:lagger
set /a lagpkg+=1
cls
color c
echo.
echo.
echo.
echo        [Medidor de LAG]
echo.
echo.
echo ²²²²²²²²²²²²²²²²²²²²²²²²°°°°°°°°
echo ²²²²²²²²²²²²²[%lag%]²²²²²²°°°°°°°°
echo ²²²²²²²²²²²²²²²²²²²²²²²²°°°°°°°°
set/a average=%toping%/%counter%
echo.
echo TIEMPO PROMEDIO   = %average%MS
echo.
echo PAQUETES ENVIADOS = %counter% / 50000
echo.
echo PAQUETES FALLIDOS = %failure%
echo.
echo PAQUETES LAGEADOS = %lagpkg%
echo.
goto run

:shit
set /a lagpkg+=1
cls
color c
echo.
echo.
echo.
echo        [Medidor de LAG]
echo.
echo.
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²°°°°
echo ²²²²²²²²²²²²²[%lag%]²²²²²²²²²²°°°°
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²°°°°
set/a average=%toping%/%counter%
echo.
echo TIEMPO PROMEDIO   = %average%MS
echo.
echo PAQUETES ENVIADOS = %counter% /50000
echo.
echo PAQUETES FALLIDOS = %failure%
echo.
echo PAQUETES LAGEADOS = %lagpkg%
echo.
goto run

:fucknoplay
set /a lagpkg+=1
cls
color c
echo.
echo.
echo.
echo        [Medidor de LAG]
echo.
echo.
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo ²²²²²²²²²²²²²[%lag%]²²²²²²²²²²²²²²
echo ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
set/a average=%toping%/%counter%
set/a average=%toping%/%counter%
echo.
echo TIEMPO PROMEDIO   = %average%MS
echo.
echo PAQUETES ENVIADOS = %counter% /50000
echo.
echo PAQUETES FALLIDOS = %failure%
echo.
echo PAQUETES LAGEADOS = %lagpkg%
echo.
goto run


:show
set /a lagpkg+=1
cls
color %rgb%
echo.
echo [ %lag% ]
echo.
echo.
ping -n 2 localhost >nul
goto run