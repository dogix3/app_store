# Base de datos

La base de datos se encuentra dentro de la carpeta APP_STORE_SERVER/src/db/
Además el archivo .env cuenta con la configuracion de la base de datos donde se encuentra el HOST, USERNAME,PASS y BDNAME

# Servicios

**Crear e integrar servicio para filtrar aplicaciones por categoría**
/api/aplicaciones/categoria/:id_categoria

**Crear Servicio para agregar comentarios por aplicación**
/api/comentarios

Este servicio es de tipo POST y recibe un cuerpo con los siguientes valores:
-texto
-autor
-valoracion
-aplicacion

**Crear servicio para agregar una calificación por aplicación**
-Este servicio fue integrado en conjunto con el anterior

**Crear servicio para contabilizar descargas**
/api/aplicaciones/descargas/:id_aplicacion_descarga_aplicacion

**Servicio para mostrar todas las aplicaciones cargadas**
/api/aplicaciones/

# Aplicacion REACT

Dentro de la carpeta public se encuentra el proyecto de react compilado
Además, dentro de la carpeta front_end se encuentran los archivos de componente del proyecto REACT