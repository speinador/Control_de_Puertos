@echo off
:MENU
cls
echo ==========================================
echo          GESTIÓN DE PUERTOS FIREWALL
echo ==========================================
echo.
echo 1. Abrir un puerto
echo 2. Cerrar un puerto
echo 3. Salir
echo.
set /p opcion=Elige una opción (1-3): 

if "%opcion%"=="1" goto ABRIR
if "%opcion%"=="2" goto CERRAR
if "%opcion%"=="3" exit
goto MENU

:ABRIR
cls
echo === ABRIR PUERTO ===
set /p puerto=Introduce el número de puerto a abrir: 
set /p proto=Protocolo (TCP o UDP): 

netsh advfirewall firewall add rule name="Puerto_%puerto%_%proto%" dir=in action=allow protocol=%proto% localport=%puerto%

echo.
echo >>> Puerto %puerto%/%proto% abierto correctamente.
pause
goto MENU

:CERRAR
cls
echo === CERRAR PUERTO ===
set /p puerto=Introduce el número de puerto a cerrar: 
set /p proto=Protocolo (TCP o UDP): 

netsh advfirewall firewall delete rule name="Puerto_%puerto%_%proto%" protocol=%proto% localport=%puerto%

echo.
echo >>> Puerto %puerto%/%proto% cerrado correctamente.
pause
goto MENU
