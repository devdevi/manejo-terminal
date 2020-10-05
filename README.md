# manejo-terminal

## Qué es la terminal y por qué la usarías

Necesitamos un intermediario que recibe las ordenes nuestras para traducirlas a algo que la compu pueda comprender.
Interfaz de texto, no hay nada gráfico, esto es mas eficiente y rapido y sobretodo, puedes automatizar tareas muy repetitivas.

La forma de ingresar a una terminal depende de tu sistema operativo.

### Comandos
Nombre programa, Párametros, Modificadores

Modificadores: Alteran lo que el programa esta haciendo

Párametos: Información para la ejecución del programa.

```
comando -flag1 -flag2 arg1 arg2

```
```
date
echo "Visaka"
```
Comodines, Combinaciones de teclas, Sustitución de comandos.

```
ma  tab
history
!numero de comando
```
Para acceder a los archivos del windows desde linux
```
cd /mnt/c/Users/myuser
```
### ¿Qué es y cómo funciona el sistema de archivos? - Organización de archivos

Comandos utilizados en la clase:
Listar archivos ```ls```

Listar archivos ocultos: ```ls -a```

Identificar el directorio: ```pwd```
Print working directory

Cambiar de directorio: ```cd```
change directory /home
```cd ~``` Home, Root
``` cd - ``` Ultimo directorio visitado

Crear un directorio: ```mkdir```

Copiar un archivo: ```cp```
```
touch test.py
cp test.py terminal/
```

Borrar un archivo: ```rm```

Mover un archivo: ```mv```
``` mv test.py ..  ```

Borrar un directorio: ```rmdir```


Comandos para trabajar desde nuestra ubicación
Lista los archivos que se encuentran en el directorio sobre el que estamos trabajando:

> ls
Lista todos los archivos incluyendo aquellos que se han definido como ocultos:

> ls -a
Todos los directorios contienen los archivos . y .., estos son punteros a directorios.

.. --> directorio padre
. --> directorio actual
Otros parámetros que puedes usar con el comando ls:

Ordena los archivos por fecha de modificación:

> ls -t
Ordena elementos primero por nombre y después por extensión:

> ls -x
Ordena los elementos primero por extensión y luego por nombre:

> ls -X
Muestra toda la información: usuario, grupo, permisos, tamaño, fecha y hora de creación.

> ls -l
Muestra la misma información que ls -l pero con las unidades de tamaño en KB, MB:

> ls -lh
Muestra el contenido de todos los subdirectorios de forma recursiva:

> ls -R
Ordena los resultados por tamaño de archivo:

> ls -S
Comandos para cambiar de ubicación
Print Working Directory: se usa para mostrar el directorio actual en el que nos encontramos trabajando.

> pwd
cd: se utiliza para cambiar de directorio. Luego del comando se debe especificar la ruta del directorio al que nos queremos mover. Por ejemplo:

> cd /home/mi_usuario
Comandos para mover, copiar o borrar
cp: copiar un archivo hacia un directorio.

> cp [archivo que se va a copiar] [directorio hacia el que se va a mover]
rm: eliminar un archivo.

> rm archivo.txt
`mv``: mover un archivo, cambiar su ubicación. La sintaxis es así:

>mv [ruta del archivo] [directorio hacia el que se va a mover]
rmdir: eliminar un directorio. En este caso es importante resaltar que, para que el directorio pueda ser eliminado, no puede contener archivos u otros directorios en su interior.

> rmdir [ruta / nombre del directorio a eliminar]

### Manejo de archivos de texto y utilidades interactivas
Archivo Binario: PARA QUE SEA INTERPRETADO POR UNA COMPUTADORA VISTO.

Archivos de texto: Binarios que se puede leer en editores de texto comprensibles para los humanos.

### Utilidades Interactivas
Programas que procesan en tiempo real
```vim nano```

### VIM
______
```vim text.txt```
``` :wq ```
``` nano text.txt ```


### Utilidades Batch
```cat```: Nos muestra el contenido completo de un archivo
ejemplo: cat tables.txt

```head```: Nos muestra las primeras lineas (También podemos escoger cuantas lineas queremos utilizando el modificador [-n #]).
Ejemplos:

```
head tables.txt
head -n 1 tables.txt
```
```tail```: Muestras las ultimas lineas del final (Inverso a head, también le funciona modificadores)
Ejemplos:

```
tail tables.txt
tail -n 5 tables.txt
```

### Utilidades Batch Avanzadas:
```grep```: Permite trabajar con expresiones regulares, funciona como un buscador dentro del archivo.

Ejemplos:
```
grep hanks dump1.sql = [comando][expresión regular][archivo]

```

Para buscar sin importar si esta en mayúscula o minúscula:
```grep -i hanks dump1.sql```
```grep -r "salir" text.txt ```
``:x guardar y salir de una sola vez``

También podemos buscar una expresión de una frase que termine con la misma palabra que estemos buscando:
grep -i “hanks’),$” .

```sed```: Screen Editor, tratamiento de flujos de caracteres. Este comando nos permite reemplazar una expresión por otra.
ejemplos:

sed ‘s/hanks/selleck/g’ dump1.sql = [comando][subcomando- sustitución][expresión original][nueva expresión][modificador-(/g de global, indica que tiene que hacerse a lo largo de todo el flujo)][Indicar cual es el flujo a utilizar (Archivo de texto)]
SED no modifica el archivo, lo que hace es crear un nuevo flujo con la modificación

Para eliminar la ultima linea podemos utilizar:
2. sed ‘$d’ nuevasPelis.csv = [Comando][’$sub-comando’][archivo]

awk: Tratamiento de texto delimitado, este comando sirve para trabajar con archivos de textos delimitados por comas.
Ejemplos:

```
awk -F ‘;’ ‘{ print $1}’ nuevasPelis.csv
```

### Trabajo fundamental con archivos de texto
En clases anteriores estudiamos cómo crear y organizar nuestras carpetas. Ahora vamos a trabajar archivos que, por supuesto, debemos guardar en estos directorios que previamente creamos.

touch: nos permite crear archivos.

```
> touch archivo.txt
```
cat: nos permite visualizar todo el contenido de nuestros archivos.

```
> cat archivo.txt
```
head: es muy parecido al comando cat. También nos permite visualizar el contenido de nuestros archivos, pero debemos indicarle cuántas líneas nos debe mostrar. Por defecto nos mostrará las primeras 10.

#### primeras 10 líneas
```
> head archivo.txt
```

#### primeras 20 líneas
```
> head -n 20 archivo.txt
```
tail: funciona igual que el comando head, pero al revés. También debemos indicarle cuántas líneas nos debe mostrar, la diferencia es que no las mostrará de abajo hacia arriba. Por defecto nos mostrará las últimas 10.

#### últimas 10 líneas
```
> tail archivo.txt
```

#### últimas 5 líneas
```
> tail -n 5 archivo.txt
```
Búsqueda y tratamiento de texto
No solo podemos visualizar nuestros archivos (o parte de nuestros archivos) tal cual como escribimos, también podemos filtrar y cambiar el contenido que podemos ver en los archivos.

Por ejemplo: imagina que tenemos un archivo gigante, con cientos o incluso miles de líneas. Si imprimieramos el contenido de todo el archivo sería muy difícil encontrar el nombre de una persona o elemento específico.

Y se vuelve aún más complicado si necesitamos que las palabras que buscamos cumplan ciertas condiciones, como solo mayúsculas o minúsculas, que la siguiente o anterior palabra cumpla ciertas condiciones, etc.

En estos casos podemos utilizar el comando grep para filtrar las líneas que queremos visualizar utilizando (o no) expresiones regulares:

grep “palabra-clave” archivo_gigante.txt
Si nos da igual si la palabra clave incluye mayúsculas o minúsculas podemos utilizar el flag -i:

```
grep -i “pAlaBra-cLAvE” archivo_gigante.txt
```

También podemos verificar si la línea incluye esta palabra clave al final:

grep “palabra-clave$” archivo_gigante.txt
O si la incluye al principio:

```
grep “^palabra-clave” archivo_gigante.txt
```
También hay situaciones donde necesitamos modificar un poco la información que obtenemos de un archivo de texto.

Por ejemplo, imagina que nuestro archivo contiene un poema, frase o saludo para responderle a los usuarios de nuestra aplicación. El problema es que cada usuario tiene un nombre diferente.

¡Hola, NOMBRE_USUARIO! Felicitaciones por completar tu desafío con PUNTOS_USUARIO puntos.
No queremos editar este archivo. Solo necesitamos cambiar los caracteres NOMBRE_USUARIO por el verdadero nombre del usuario.

Para esto podemos utilizar el comando sed. Solo debemos indicarle que queremos realizar una sustitución (s/), la palabra que vamos a cambiar (NOMBRE_USUARIO), la nueva palabra que vamos a incluir (Ana) y cerrar con el símbolo /.

```
> sed ‘s/NOMBRE_USUARIO/Ana/’ archivo-saludo.txt
```
Ahora imagina que, además del nombre, debemos cambiar también la puntuación que obtuvo el usuario:

```
> sed ‘s/NOMBRE_USUARIO/Ana/; s/PUNTOS_USUARIO/35/’ archivo-saludo.txt
```

Puedes ver muchos más usos del comando sed en este tutorial: https://likegeeks.com/es/sed-de-linux/.

## Comunicación entre procesos: Qué son y cómo se utilizan los flujos estándar


```
ls > archivos.txt
ls -l >> archivos.txt
ls -l | more
cat archivos.txt | wc
     11      52     350
```

```
cat archivos.txt | wc
Nos permite contar cuantos caracteres tiene un archivo
```
### Administración de procesos en background y foreground

```
mysql -h 127.0.0.1 -u root -p1234 < archivos.txt &
```
procesos que están corriendo
```
ps
```
```
kill killall
```
```kill```Enviá señales para que se detenga el proceso
```top``` Procesos de la compu, se cierra con ```q```
#### Permisos sobre archivos: El sistema de permisos octal
Usuario, Tiene un Dueño asociado, un Grupo, Otros
### Permisos
Para alterar los permisos que tiene
un archivo asociado tenemos 3 comandos
```
chmod
chown
chgrp
```
```chmod```: Cambia individualmente los permisos.

````chown```: Cambia quien es el dueño del archivo.
``
```chmod o-w archivos.txt```: Quitar el permiso de escritura de el archivo ```0```

Existe notaciones textuales y notaciones binarias.
¿Cuáles acciones y permisos pueden tener un usuario sobre un archivo?

Lectura, Escritura y Ejecución
¿Todos los usuarios tienen los mismos permisos sobre todos los archivos?
No
¿Quiénes pueden o no trabajar con estos documentos?
Depende de los permisos que tenga configurado cada usuario
¿Cómo se dividen los permisos de un archivo o carpeta?
Dueño / Grupo / Otros
Al hablar de usuarios y permisos en el sistema operativo, ¿qué significa un 777? ¿Deberíamos preocuparnos?
El 777 significa que todos los usuarios tienen permisos para Leer/Escribir/Ejecutar un archivo o carpeta. ¡Y claro que nos debemos preocupar! Todos tienen accesos y control total sobre los archivos.
¿Qué permisos debes tener para poder editar un archivo que creo otro usuario de tu sistema operativo?
rw
¿Con qué comando cambiamos los permisos que tienen los usuarios para trabajar con un archivo?
```
ls
chmod
```
No quieres que nadie pueda editar ni mucho menos ejecutar un script muy peligroso que estás creando. ¿Qué permisos debe tener este script para conseguir este resultado?
r ó 766
¿Quién es sudo? ¿Es peligroso?
Simula ser el usuario supermaster (Dios). Por consiguiente, sudo es un comando que nos permite tener los usuarios root. No es peligroso, pero si no se usa correctamente si podría ser peligroso.

### Paquetes binarios
apt, sypper, rpm
```pip```: Python
```composer```: php
```npm ```: Node
```conda```:

### Compresión de archivos

#### Archivos .gz:
Comprimir: gzip archivo.txt
Descomprimir: gzip -d archivo.txt.gz


#### Archivos .tar:
Empaquetar: ``` tar cf paquete.tar /carpeta/a/empaquetar/```
Ver contenido del paquete:
```tar tf paquete.tar ```
Empaquetar y ver contenido empaquetado:

```tar -cvf paquete.tar /carpeta/a/empaquetar/```
Desempaquetar: ```tar xf paquete.tar```


##### Archivos .tar.gz:
Empaquetar y Comprimir:
```tar czf empaquetado.tar.gz /carpeta/a/empaquetar/y/comprimir```
Descomprimir:
```tar xzf archivo.tar.gz```

### Herramientas de búsqueda de archivos
Algunos apuntes de la clase:

LOCATE: ```locate```
Busqueda en todo el sistema de archivos
Ojo: Para ello debe tener la BD actualizada
tienes que usar: sudo updatedb
*se demorara bastante la primera vez, ojo con ese detalle.

Ejemplo: locate prueba.txt
locate -c <archivo> [Mostrara el conteo de los archivos]

WHEREIS: ```whereis```
Para buscar archivos binarios (Osea Comandos)

Ej: whereis echo
echo: /bin/echo /usr/share/man/man1/echo.1.gz

/bin/echo -> la primera ruta encontrada
/usr/share/man/man1/echo.1.gz ->la segunda ruta encontrada

FIND:```find```
Busqueda compleja según una serie de criterios

find /ruta -name “archivo*”
[buscara todos los archivos que comiencen con el nombre archivo]

find . -user <nombreusuario> -perm XXX
[. el punto es directorio actual]
[-user nombre del usuario a que pertenece]
[-perm = Permisos XXX puede ser 777 644 etc]

find . -name <archivo> -delete
[. el punto es directorio actual]
[-delete ->Eliminara el archivo encontrado]

#### Herramientas para interactuar a través de HTTP
Intercambios de texto
>curl: Pedidos crudos
>wget: realiza descargas desde servidores http

#### Acceso seguro a otras computadoras
```ssh```: Secure Shell

##### Envío de datos seguro
ssh: Secure shell (Terminal segura),Con este comando ingresamos a un servidor de manera segura.
ejemplo: ``` ssh leeway -prod```
.
```mail```: Nos permite enviar un email desde el servidor. Para que este comando funcione hay que tener algunas cosas configuradas
.
Ejemplo: echo “Probando” | mail -s(-s: es el asunto del correo) “Probando para platzi” mchojrin1@hotmail.com"

#### Qué son y cómo se utilizan las variables de entorno

Variable de entorno a la que todo el sistema tiene acceso

```

echo $PATH
```
Con el ```$```, me muestra el contenido de la variable, y esto sucede con  todas las variables de entorno, todos los procesos tienen acceso a estas variables
##### Asignación globales
```export MY_VAR=userVisidevi```Esto quedara asi durante la sesion,

#### Variables de Entorno
Es un definición global a la que todos los procesos tienen acceso. esta toma mas información de lo que se este typeando.
Ejemplo: ```echo $PATH``` = se encuentran todos los comandos ejecutables
.
#### Asignación de las variables de entorno
```export:``` Este comando se utiliza para asignar a toda la sesión
Ejemplo: export MI_VAR = mauro, si luego escribimos echo $MI_VAR se mostrará mauro en la terminal. (Este permanecerá miestras dure mi sesión)
.
var: Este comando solo asigna el valor para el proximo proceso que se va a ejecutar. este no es muy usual.
Ejemplo: MI_VAR=/home php env.php

#### Las funciones Bash pueden:

-Eliminar tareas repetitivas

-Ahorrar tiempo

-Proporciona una secuencia de actividades bien estructurada, modular y formateada

-Con scripts, podemos proporcionar valores dinámicos a comandos usando argumentos de línea de comando

-Puede simplificar comandos complejos en una sola unidad en ejecución

-Una vez creado, se puede ejecutar cualquier cantidad de veces por cualquier persona. Construye una vez y ejecuta muchas veces.

-Los flujos lógicos se pueden construir utilizando funciones bash

-Las funciones Bash se pueden ejecutar al inicio del servidor o agregando un cron job programado

-Los comandos pueden ser depurados

-Puede tener comandos de shell interactivos

Bash es definitivamente una gran herramienta para facilitar tu trabajo y mejorar tus proyectos.