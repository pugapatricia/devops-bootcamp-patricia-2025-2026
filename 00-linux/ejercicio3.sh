#!/bin/bash

# 🟢 Si el usuario pasa un texto, lo usamos. Si no, usamos el texto por defecto.
texto="$1"

if [ -z "$texto" ]; then
  texto="Que me gusta la bash!!!!"
fi

# 🟢 Crear la estructura de directorios
mkdir -p foo/dummy foo/empty

# 🟢 Crear file1.txt con el texto indicado
echo "$texto" > foo1/dummy/file1.txt

# 🟢 Copiar el contenido de file1.txt a file2.txt
cat foo/dummy/file1.txt > foo/dummy/file2.txt

# 🟢 Mover file2.txt a la carpeta empty
mv foo/dummy/file2.txt foo1/empty/

# 🟢 Mostrar el resultado final
echo "✅ Estructura creada correctamente:"
ls -R foo

