# Guía de Ejercicios CLI con Bash

## Introducción

En esta práctica se han realizado varios ejercicios utilizando Bash para trabajar con:
- Creación de directorios y ficheros
- Manipulación de archivos
- Automatización mediante scripts
- Procesamiento de texto

## Ejercicio 1 y 2

1. Primero creé la estructura de directorios utilizando `mkdir -p` para generar las carpetas `foo/dummy` y `foo/empty`.

2. Después creé el archivo `file1.txt` dentro de la carpeta `dummy` utilizando `echo`, añadiendo el texto "Me encanta la bash!!".

3. A continuación, generé el archivo `file2.txt` vacío con el comando `touch`.

4. Una vez creados los archivos, copié el contenido de `file1.txt` dentro de `file2.txt` utilizando redirección con `cat`.

5. Por último, moví el archivo `file2.txt` desde la carpeta `dummy` a la carpeta `empty` usando el comando `mv`.

---

## Ejercicio 3

Para este ejercicio creé un script en Bash que automatiza todo el proceso anterior.

1. Primero recogí el parámetro de entrada utilizando `$1`, que representa el texto que se quiere introducir en el fichero.

2. Después validé si el parámetro estaba vacío utilizando la condición `-z`. En caso de no recibir ningún texto, asigné un valor por defecto: "Que me gusta la bash!!!!".

3. A continuación, creé la estructura de directorios con `mkdir -p`.

4. Luego generé el archivo `file1.txt` con el texto indicado mediante `echo`.

5. Seguidamente, copié el contenido de `file1.txt` en `file2.txt` utilizando `cat`.

6. Después moví el archivo `file2.txt` a la carpeta `empty` con `mv`.

7. Finalmente, mostré la estructura de directorios resultante utilizando `ls -R`.

---

## Ejercicio 4

En este ejercicio desarrollé un script que descarga el contenido de una página web y busca una palabra dentro del fichero descargado.

1. Primero definí una URL fija dentro del script y un nombre de fichero donde guardar el contenido.

2. Después recogí la palabra a buscar mediante el parámetro `$1` y validé que se hubiera introducido. En caso contrario, mostré un mensaje de error y detuve la ejecución.

3. A continuación, descargué el contenido de la página utilizando `curl` en modo silencioso.

4. Una vez descargado el fichero, conté cuántas veces aparece la palabra utilizando `grep` ignorando mayúsculas y `wc -l`.

5. Si la palabra no aparece, mostré un mensaje indicándolo.

6. Si aparece, obtuve la línea en la que aparece por primera vez utilizando `grep` con numeración de líneas y extraje ese dato.

7. Finalmente, mostré el número de ocurrencias y la línea de la primera aparición.

---

## Ejercicio 5

En este último ejercicio modifiqué el script anterior para que tanto la URL como la palabra a buscar se pasen como parámetros.

1. Primero validé que el script recibe exactamente dos parámetros utilizando `$#`. En caso contrario, mostré un mensaje indicando el uso correcto y detuve la ejecución.

2. Después asigné el primer parámetro a la URL y el segundo a la palabra a buscar.

3. A continuación, descargué el contenido de la página con `curl`.

4. Seguidamente, conté las ocurrencias de la palabra utilizando `grep` y `wc -l`.

- Si la palabra no aparece, mostré un mensaje indicándolo.

- Si aparece, obtuve la línea de la primera coincidencia.

5. Por último, añadí una condición para diferenciar si la palabra aparece una sola vez o varias, mostrando un mensaje distinto en cada caso.
