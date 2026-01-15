<div align="center">
  <h1>⚖️ Sistema de Pesaje - Balanza Casilda</h1>
  <p><strong>Integración Serie para Emisión de Tickets de Exportación (Cumplimiento ARCA)</strong></p>

  <img src="https://img.shields.io/badge/Delphi-7-blue?style=for-the-badge&logo=delphi&logoColor=white" />
  <img src="https://img.shields.io/badge/Database-Firebird-orange?style=for-the-badge&logo=firebird&logoColor=white" />
  <img src="https://img.shields.io/badge/Status-En%20Desarrollo-yellow?style=for-the-badge" />
</div>

<br />

## 📝 Descripción
Este sistema permite la comunicación mediante puerto serie con una **balanza Casilda** para la emisión de tickets de pesada. El software ha sido diseñado para cumplir estrictamente con los requisitos de **ARCA** (ex-AFIP) necesarios para la documentación de exportaciones.

---

## 🛠️ Tecnologías Utilizadas
* **Lenguaje:** Delphi 7
* **Base de Datos:** Firebird SQL
* **Protocolo:** Comunicación Serie (RS-232)

---

## 🚀 Guía de Instalación y Configuración

Siga estos pasos detallados para poner en marcha el entorno de desarrollo o producción:

### 1. Motor de Base de Datos
* Instalar el servidor **Firebird** (instalador ubicado en `./data`).
* **Importante:** Durante la instalación, cuando aparezca la opción de **"Agregar las DLL al system"**, asegúrese de marcar la casilla (tildar la opción).

### 2. Administración de DB
* Descargar e instalar **Flamerobin** (Administrador de Firebird).
* 🔗 [Descargar Flamerobin aquí](http://www.flamerobin.org/)
* Utilice esta herramienta para crear una base de datos vacía donde se restaurará el backup.

### 3. Restauración de Datos (Restore)
* Realizar el restore del backup de pruebas ubicado en `./data/bAlianza.fbk` para contar con la estructura y los datos iniciales.

### 4. Archivos del Programa
* Copiar los archivos `bAlianza.exe` y `bAlianza.ini` en una carpeta local de su PC.

### 5. Configuración de Conexión
* Abrir el archivo `bAlianza.ini` y modificar los parámetros de **IP** y **Ruta de la base de datos** según su entorno.

### 6. Comunicación Hardware
* Conectar el puerto serie de la balanza a la PC y ejecutar el programa para testear la comunicación.

---

## ⚠️ Requisitos para Exportación
> El sistema genera los tickets cumplimentando la normativa vigente de **ARCA** para el pesaje de cargas destinadas a exportación.
