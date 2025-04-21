@echo off
setlocal EnableDelayedExpansion
color 0A
title USB LIBERACION - PS3 / PS4 - by freedarwuin

echo ==================================================
echo      CREAR USB PARA LIBERAR CONSOLA (PS3 / PS4)
echo ==================================================
echo.

:: Mostrar discos conectados
wmic logicaldisk get name, volumename, description
echo.
set /p disk="Escribí la letra de la unidad USB (ej: E): "
echo.

:: Verificar acceso
if not exist %disk%:\ (
    echo La unidad %disk% no existe o no está conectada.
    pause
    exit /b
)

:: Crear estructura
echo [*] Creando carpetas...
mkdir "%disk%:\LIBERACION\PS3\UPDATE"
mkdir "%disk%:\LIBERACION\PS3\PKG"
mkdir "%disk%:\LIBERACION\PS3\EXPLOIT"
mkdir "%disk%:\LIBERACION\PS4"

:: Descargar archivos para PS3
echo Descargando archivos para PS3...
powershell -Command "Invoke-WebRequest -Uri 'https://www.ps3xploit.me/firmware/hfw/HFW_4.92.1_PS3UPDAT.PUP' -OutFile '%disk%:\LIBERACION\PS3\UPDATE\PS3UPDAT.PUP'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/aldostools/webMAN-MOD/releases/download/1.47.48/webMAN_MOD_1.47.48_Installer.pkg' -OutFile '%disk%:\LIBERACION\PS3\PKG\webMAN_MOD.pkg'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/aldostools/Resources/releases/download/Addons/multiMAN.pkg' -OutFile '%disk%:\LIBERACION\PS3\PKG\multiMAN.pkg'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/aldostools/IRISMAN/releases/download/4.91/IRISMAN_4.91.pkg' -OutFile '%disk%:\LIBERACION\PS3\PKG\IRISMAN.pkg'"

:: Descargar archivos para PS4
echo Descargando archivos para PS4...
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/GoldHEN/GoldHEN_Resources/raw/main/exfathax.img' -OutFile '%disk%:\LIBERACION\PS4\exfathax.img'"
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/GoldHEN/GoldHEN_Resources/raw/main/GoldHEN_2.4b16.pkg' -OutFile '%disk%:\LIBERACION\PS4\GoldHEN.pkg'"

:: Descargar ícono personalizado
echo Descargando ícono para la USB...
powershell -Command "Invoke-WebRequest -Uri 'https://cdn.discordapp.com/attachments/1229183986660364308/1231307265125740675/usb.ico' -OutFile '%disk%:\usb.ico'"

:: Crear autorun.inf
echo [*] Generando autorun.inf...
(
echo [Autorun]
echo ICON=usb.ico
echo LABEL=LIBERACION
) > "%disk%:\autorun.inf"

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
echo Orden correcta: DLC -> Update -> Fix>> "%disk%:\README.txt"
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
echo IRISMAN PARA PENDRIVE NTFS + PKG > 4GB>> "%disk%:\README.txt"
echo 1. Formatear en NTFS y copiar .pkg en raiz>> "%disk%:\README.txt"
echo 2. Conectar a USB cerca del lector>> "%disk%:\README.txt"
echo 3. Activar HEN y abrir IRISMAN>> "%disk%:\README.txt"
echo 4. Buscar dev_hdd0 > packages>> "%disk%:\README.txt"
echo 5. Del otro lado entrar en ntfs0>> "%disk%:\README.txt"
echo 6. Triangulo en el .pkg y copiar>> "%disk%:\README.txt"
echo 7. Salir de IRISMAN e instalar .pkg desde XMB>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"
echo ===============================>> "%disk%:\README.txt"
echo DESCARGA DE JUEGOS RECOMENDADA>> "%disk%:\README.txt"
echo https://thezukostore.com/>> "%disk%:\README.txt"
echo ===============================>> "%disk%:\README.txt"
echo.>> "%disk%:\README.txt"

:: Crear acceso directo a tienda recomendada
echo [InternetShortcut] > "%disk%:\JUEGOS PS3+PS4.url"
echo URL=https://thezukostore.com/ >> "%disk%:\JUEGOS PS3+PS4.url"
echo IconFile=explorer.exe >> "%disk%:\JUEGOS PS3+PS4.url"
echo IconIndex=0 >> "%disk%:\JUEGOS PS3+PS4.url"


:: Fin
echo.
echo USB lista. Revisa %disk%:\LIBERACION
echo README.txt, autorun.inf y acceso directo a juegos creados correctamente.

:: Abrir tienda recomendada
start https://thezukostore.com/

pause
exit /b
