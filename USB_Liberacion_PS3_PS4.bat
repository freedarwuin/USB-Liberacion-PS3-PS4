@echo off
setlocal EnableDelayedExpansion
color 0A
title USB LIBERACION - PS3 / PS4 - by freedarwuin

:: ==================================================
:: INICIO - INFORMACIÓN Y SELECCIÓN DE CONSOLA
:: ==================================================
echo ==================================================
echo      CREAR USB PARA LIBERAR CONSOLA (PS3 / PS4)
echo ==================================================
echo.

:: Selección de consola
echo ¿Para qué consola quieres preparar el USB?
echo [1] PS3
echo [2] PS4
echo [3] Ambas
set /p opcion="Elegir una opción (1, 2 o 3): "

:: Mostrar discos conectados
echo.
wmic logicaldisk get name, volumename, description
echo.
set /p disk="Escribe la letra de la unidad USB (ej: E): "
echo.

:: Verificar acceso
if not exist %disk%:\ (
    echo La unidad %disk% no existe o no está conectada.
    pause
    exit /b
)

:: ==================================================
:: CREACIÓN DE ESTRUCTURA DE CARPETAS
:: ==================================================
echo [*] Creando carpetas...

if "%opcion%"=="1" (
    mkdir "%disk%:\PS3\UPDATE"
    mkdir "%disk%:\PS3\PKG"
    mkdir "%disk%:\PS3\EXPLOIT"

    :: Crear acceso directo a zukostore
    echo [InternetShortcut] > "%disk%:\zukostore.url"
    echo URL=https://thezukostore.com/ >> "%disk%:\zukostore.url"
    echo IconFile=explorer.exe >> "%disk%:\zukostore.url"
    echo IconIndex=0 >> "%disk%:\zukostore.url"

    :: Abrir tienda recomendada
    start https://thezukostore.com/
)

if "%opcion%"=="2" (
    mkdir "%disk%:\PS4"
)

if "%opcion%"=="3" (
    mkdir "%disk%:\PS3\UPDATE"
    mkdir "%disk%:\PS3\PKG"
    mkdir "%disk%:\PS3\EXPLOIT"
    mkdir "%disk%:\PS4"
)

:: ==================================================
:: DESCARGA DE ARCHIVOS PARA PS3
:: ==================================================
if "%opcion%"=="1" goto ps3
if "%opcion%"=="3" goto ps3
goto ps4

:ps3
echo Descargando archivos para PS3...

powershell -Command "Invoke-WebRequest -Uri 'https://www.ps3xploit.me/firmware/hfw/HFW_4.92.1_PS3UPDAT.PUP' -OutFile '%disk%:\PS3\UPDATE\PS3UPDAT.PUP'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/1.pkgi.1.2.0.pkg' -OutFile '%disk%:\1.pkgi.1.2.0.pkg'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/2.VIDEOSTORE.3.0.pkg' -OutFile '%disk%:\2.VIDEOSTORE.3.0.pkg'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/3.WIKISTORE.pkg' -OutFile '%disk%:\3.WIKISTORE.pkg'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/4.ZukoStore.pkg' -OutFile '%disk%:\4.ZukoStore.pkg'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/5.Multiman.pkg' -OutFile '%disk%:\5.Multiman.pkg'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/6.MultiFIX.HEN.4.92.pkg' -OutFile '%disk%:\6.MultiFIX.HEN.4.92.pkg'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/7.webMAN_MOD_1.47.48.pkg' -OutFile '%disk%:\7.webMAN_MOD_1.47.48.pkg'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/8.15.280_Licencias.pkg' -OutFile '%disk%:\8.15.280_Licencias.pkg'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/9.Licencias.PS2.pkg' -OutFile '%disk%:\9.Licencias.PS2.pkg'"

:: Crear AVANZADO.txt
echo [*] Generando AVANZADO.txt...
(
    echo ===============================
    echo INFORMACIÓN ADICIONAL - PS3
    echo ===============================
    echo.
    echo BORRAR ARCHIVOS .PKG
    echo 1. Ir a multiman
    echo 2. Ir a ps3 root
    echo 3. Entrar en dev_hdd0
    echo 4. Entrar en packages
    echo 5. Seleccionar con círculo el pkg y eliminar
    echo O desde el XMB: borrar archivos .pkg
    echo.
    echo INSTALAR DLC, PARCHES O FIXES .PKG
    echo Orden correcta: DLC -> Update -> Fix
    echo 1. Descargar el .pkg correcto (misma versión y región)
    echo 2. Pasarlo a la raíz del USB (sin carpetas)
    echo 3. Ir a administrador de archivos .pkg
    echo 4. Instalar desde almacenamiento del sistema
    echo.
    echo INSTALAR VARIOS PKG AUTOMÁTICAMENTE
    echo 1. Enumerarlos correctamente (ej: pkg1, pkg2…)
    echo 2. Ir a la carpeta y tocar triángulo -> "Install all packages"
    echo 3. Se instalarán todos en orden automáticamente
    echo.
    echo IRISMAN PARA PENDRIVE NTFS + PKG > 4GB
    echo 1. Formatear en NTFS y copiar .pkg en raíz
    echo 2. Conectar a USB cerca del lector
    echo 3. Activar HEN y abrir IRISMAN
    echo 4. Buscar dev_hdd0 > packages
    echo 5. Del otro lado entrar en ntfs0
::contentReference[oaicite:0]{index=0}
