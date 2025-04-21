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
goto end

:ps3
echo Descargando archivos para PS3...

:: Aquí están comentadas las descargas por ahora.
:: Descomenta si deseas activar descarga automática.

:: powershell -Command "Invoke-WebRequest -Uri 'https://www.ps3xploit.me/firmware/hfw/HFW_4.92.1_PS3UPDAT.PUP' -OutFile '%disk%:\PS3\UPDATE\PS3UPDAT.PUP'"
:: powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/1.pkgi.1.2.0.pkg' -OutFile '%disk%:\PS3\PKG\1.pkgi.1.2.0.pkg'"
:: powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/2.VIDEOSTORE.3.0.pkg' -OutFile '%disk%:\PS3\PKG\2.VIDEOSTORE.3.0.pkg'"
:: powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/3.WIKISTORE.pkg' -OutFile '%disk%:\PS3\PKG\3.WIKISTORE.pkg'"
:: powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/4.ZukoStore.pkg' -OutFile '%disk%:\PS3\PKG\4.ZukoStore.pkg'"
:: powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/5.Multiman.pkg' -OutFile '%disk%:\PS3\PKG\5.Multiman.pkg'"
:: powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/6.MultiFIX.HEN.4.92.pkg' -OutFile '%disk%:\PS3\PKG\6.MultiFIX.HEN.4.92.pkg'"
:: powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/7.webMAN_MOD_1.47.48.pkg' -OutFile '%disk%:\PS3\PKG\7.webMAN_MOD_1.47.48.pkg'"
:: powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/8.15.280_Licencias.pkg' -OutFile '%disk%:\PS3\PKG\8.15.280_Licencias.pkg'"
:: powershell -Command "Invoke-WebRequest -Uri 'https://github.com/freedarwuin/USB-Liberacion-PS3-PS4/releases/download/release/9.Licencias.PS2.pkg' -OutFile '%disk%:\PS3\PKG\9.Licencias.PS2.pkg'"

:: Crear README.txt
echo [*] Generando README.txt...

echo ===============================> "%disk%:\README.txt"
echo USB DE LIBERACION - PS3 + PS4>> "%disk%:\README.txt"
echo ===============================>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"
echo Contenido creado por: freedarwuin>> "%disk%:\README.txt"
echo Discord: freedarwuin>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"
echo CARPETAS:>> "%disk%:\README.txt"
echo - LIBERACION\PS3\UPDATE -> HFW_4.92.1>> "%disk%:\README.txt"
echo - LIBERACION\PS3\PKG -> webMAN MOD, multiMAN, IRISMAN>> "%disk%:\README.txt"
echo - LIBERACION\PS4 -> GoldHEN + exfathax.img>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"
echo INSTRUCCIONES PS3:>> "%disk%:\README.txt"
echo 1. Instalar HFW desde recovery.>> "%disk%:\README.txt"
echo 2. Entrar al navegador y abrir: https://www.ps3xploit.me>> "%disk%:\README.txt"
echo 3. Ejecutar HEN Auto Installer>> "%disk%:\README.txt"
echo 4. Instalar PKG desde la carpeta correspondiente.>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"
echo INSTRUCCIONES PS4:>> "%disk%:\README.txt"
echo - Usar exfathax.img para ejecutar exploit.>> "%disk%:\README.txt"
echo - Instalar GoldHEN.pkg.>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"
echo ===============================>> "%disk%:\README.txt"
echo INFORMACION ADICIONAL - PS3>> "%disk%:\README.txt"
echo ===============================>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"
echo BORRAR ARCHIVOS .PKG>> "%disk%:\README.txt"
echo 1. Ir a multiman>> "%disk%:\README.txt"
echo 2. Ir a ps3 root>> "%disk%:\README.txt"
echo 3. Entrar en dev_hdd0>> "%disk%:\README.txt"
echo 4. Entrar en packages>> "%disk%:\README.txt"
echo 5. Seleccionar con circulo el pkg y eliminar>> "%disk%:\README.txt"
echo O desde el XMB: borrar archivos .pkg>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"
echo INSTALAR DLC, PARCHES O FIXES .PKG>> "%disk%:\README.txt"
echo Orden correcta: DLC -> "Update -> Fix">> "%disk%:\README.txt"
echo 1. Descargar el .pkg correcto (misma version y region)>> "%disk%:\README.txt"
echo 2. Pasarlo a la raiz del USB (sin carpetas)>> "%disk%:\README.txt"
echo 3. Ir a administrador de archivos .pkg>> "%disk%:\README.txt"
echo 4. Instalar desde almacenamiento del sistema>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"
echo INSTALAR VARIOS PKG AUTOMATICAMENTE>> "%disk%:\README.txt"
echo 1. Enumerarlos correctamente (ej: pkg1, pkg2…)>> "%disk%:\README.txt"
echo 2. Ir a la carpeta y tocar triangulo -> "Install all packages">> "%disk%:\README.txt"
echo 3. Se instalarán todos en orden automáticamente>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"
echo IRISMAN PARA PENDRIVE NTFS + PKG > "4GB">> "%disk%:\README.txt"
echo 1. Formatear en NTFS y copiar .pkg en raiz>> "%disk%:\README.txt"
echo 2. Conectar a USB cerca del lector>> "%disk%:\README.txt"
echo 3. Activar HEN y abrir IRISMAN>> "%disk%:\README.txt"
echo 4. Buscar dev_hdd0 > "packages">> "%disk%:\README.txt"
echo 5. Del otro lado entrar en ntfs0>> "%disk%:\README.txt"
echo 6. Triangulo en el .pkg y copiar>> "%disk%:\README.txt"
echo 7. Salir de IRISMAN e instalar .pkg desde XMB>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"
echo ===============================>> "%disk%:\README.txt"
echo DESCARGA DE JUEGOS RECOMENDADA>> "%disk%:\README.txt"
echo https://thezukostore.com/>> "%disk%:\README.txt"
echo ===============================>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"

:end
echo.
echo Proceso finalizado. El USB está listo.
pause
exit /b