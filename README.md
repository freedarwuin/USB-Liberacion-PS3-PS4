# USB-Liberacion-PS3-PS4

Contenidos para liberar PS3 y PS4 desde USB.

## 📂 Estructura del USB

```
USB:
├── LIBERACION
│   └── PS3
│       ├── UPDATE\          # HFW 4.92.1 (PS3UPDAT.PUP)
│       ├── PKG\             # webMAN MOD, multiMAN, IRISMAN
│       └── EXPLOIT\         # (Espacio reservado para exploits offline)
├── usb.ico                  # Ícono personalizado del USB
├── autorun.inf              # Archivo para asignar ícono y nombre al USB
├── LANZADOR.bat             # Script automático para preparar la USB
├── README.txt               # Instrucciones offline detalladas
└── JUEGOS PS1+PS2+PS3.url   # Acceso directo a la web de juegos recomendada
```

## ⚙️ Preparación de la USB con el servidor offline

1. **Descomprimí el paquete completo** en tu PC con Windows.
2. Conectá tu USB en formato **FAT32**.
3. Ejecutá el archivo `LANZADOR.bat` (como administrador si hace falta).
4. El script copiará todos los archivos necesarios, configurará el entorno offline y preparará la estructura del USB.
5. Esto incluye los archivos de firmware, los `.pkg`, el ícono del USB, el acceso directo a la tienda de juegos y un archivo README.txt con instrucciones.
6. Esperá a que el script termine y cierre la ventana.
7. **Expulsá la USB de forma segura**.
8. Conectala a la **PS3 en el puerto más cercano al lector de discos**.
9. Ahora seguí los pasos del exploit o la instalación de paquetes como se explica más abajo.

> 💡 Este método asegura que tu PS3 pueda acceder a todos los archivos necesarios desde la USB, incluyendo el firmware HFW 4.92.1, los `.pkg` y los archivos del exploit, **sin depender de internet**.

## 🕹️ Instrucciones para PS3

> Este tutorial sirve para **todas las PS3** (Fat, Slim, SuperSlim) **sin importar la versión actual del sistema**.

1. Pasá los archivos a una memoria USB formateada en **FAT32**.
2. Conectala al **puerto más cercano al lector de discos** y no la desconectes hasta que se indique.
3. En el menú de PS3, andá a `Actualización del sistema`.
4. Seleccioná `Actualizar mediante un soporte de almacenamiento`.
5. Detectará la versión **4.92.1 híbrida**.
6. Aceptá y dejá que se reinicie y comience la instalación.
   > Si no detecta la actualización, tendrás que entrar en **modo recovery**.

### 🔧 Navegador y ejecución del exploit

1. Abrí el navegador y asegurate de tener una **página de inicio en blanco**.
2. Borrá:
    - Cookies
    - Historial de búsqueda
    - Caché
3. Cerrá el navegador y volvé a abrirlo.
4. En la barra de direcciones escribí:
   ```
   https://www.ps3xploit.me
   ```
5. Entrá en la pestaña `PS3HEN > HEN Auto Installer`.
6. Al cargar la página, seleccioná `Auto Install HEN`.
7. Si falla, cerrá y volvé a intentar.
8. Si ves letras verdes, el proceso de instalación comenzará automáticamente.
9. Esperá a que se reinicie la PS3. ¡Ya tenés **HEN instalado oficialmente**!

## 🛒 Instalar tienda de juegos y herramientas

1. Andá a `Administrar archivos PKG > Instalar archivo PKG > Directorio estándar`.
2. Instalá los siguientes `.pkg`:
    - **PKGi 1.2.0** (tienda de juegos)
    - **VIDEOSTORE 3.0**
    - **WIKISTORE**
    - **ZukoStore**
    - **Multiman**
    - **MultiFIX HEN 4.92** (para compatibilidad con tiendas)
    - **webMAN MOD 1.47.48**
    - **15.280_Licencias**
    - **Licencias PS2**

> 💡 Asegurate de instalarlos uno por uno desde el menú de instalación de paquetes PKG. Algunos pueden tardar más de lo normal.

## ✅ Activar consola y licencias

1. Iniciá sesión con tu cuenta de PSN.
2. Andá a `Administración de cuentas > Activación de sistema > Sistema PS3 > Juego`.
3. Esto activa tu consola para aceptar licencias.

### 🔐 Instalar licencias necesarias

> Si ya tenías HEN y las licencias instaladas, **podés saltear este paso**.

1. Instalá las `15mil licencias` desde la carpeta `PKG`.
2. Instalá también las **Licencias PS2** desde la misma sección.
   > Este proceso puede tardar hasta 30 minutos. No lo saltees si querés jugar títulos descargados.

## 🎮 Descargar juegos PS1, PS2 y PS3

Se recomienda la web:

👉 **[https://thezukostore.com/](https://thezukostore.com/)**

### ¿Cómo usarla?

1. Ingresá a [https://thezukostore.com/](https://thezukostore.com/)
2. Buscá el juego por nombre.
3. Filtrá por plataforma (PS1, PS2 o PS3).
4. Descargá el `.pkg` + su archivo `.rap` si es necesario.
5. Copialo al USB y usá el instalador de PKG en la consola.

> 💡 **Recordá:** los archivos `.rap` van en `dev_hdd0/exdata/` o se instalan con herramientas como **ReActPSN** o **webMAN MOD**.

## 👤 Autor

- Proyecto creado por: `freedarwuin`
- Discord: `freedarwuin`
- Web recomendada para juegos: [https://thezukostore.com/](https://thezukostore.com/)

## 💰 ¿Querés apoyar este proyecto?

Podés colaborar invitándome un café virtual ☕ o haciendo una donación:

- Binance Wallet (USDT - TRC20): `TU_WALLET_AQUÍ`
- WhatsApp: `+584129056224`
- Discord: `freedarwuin`
