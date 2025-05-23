@echo off
echo Abriendo puerto 445 en el firewall...
echo
echo Es utilizado por SMB (Server Message Block) en Windows para compartir archivos e impresoras.
echo
echo Es uno de los puertos más atacados por herramientas como Metasploit, ya que ha tenido vulnerabilidades graves.
echo
echo Abrirlo sin necesidad y sin medidas de seguridad representa un alto riesgo.

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
set /p puerto=Introduce el numero de puerto a abrir: 
set /p proto=Protocolo (TCP o UDP): 

netsh firewall add portopening protocol=%proto% port=%puerto% name="Puerto_%puerto%_%proto%" mode=ENABLE

echo.
echo >>> Puerto %puerto%/%proto% abierto correctamente.
pause
goto MENU

:CERRAR
cls
echo === CERRAR PUERTO ===
set /p puerto=Introduce el numero de puerto a cerrar: 
set /p proto=Protocolo (TCP o UDP): 

netsh firewall delete portopening protocol=%proto% port=%puerto%

echo.
echo >>> Puerto %puerto%/%proto% cerrado correctamente.
pause
pause
goto MENU
