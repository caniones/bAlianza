EN DESARROLLO
Sistema de comunicación serie con una balanza Casilda para emición de tickets de pesada cumpliendo los requisitos de ARCA para cumplimentar la documentación de una exportación
Está desarrollado en Delphi7 y base de datos Firebird

Primer paso -> instalar la base de tados Firebird que está en ./data Ahí siguiente siguiente pero cuando llegue el momento de agregar las dll al system tildar la opción
Segundo paso -> instalar el admininistrador de Firebird para crear una base de datos vacía donde vamos a levantar el backup url http://www.flamerobin.org/
Tercer paso -> hacer el restore de la base de pruebas que está en ./data/bAlianza.fbk para tenés unos datos iniciales
Cuarto paso -> en una carpeta de tu pc copiar los archivos bAlianza.exe y bAlianza.ini
Quinto paso -> modificar el .ini con la ip y dirección de la base de datos
Sexto paso -> conectar el puerto serie de la balanza y probar la comunicación
