#!/bin/bash

# 🟢 URL constante
URL="https://www.gutenberg.org/files/11/11-0.txt"

# 🟢 Archivo donde se guardará el contenido
FICHERO="pagina.html"

# 🟢 Palabra a buscar (primer parámetro)
PALABRA="$1"

# 🟢 Validación: si no se pasa ninguna palabra
if [ -z "$PALABRA" ]; then
  echo "❌ Es necesario pasar una palabra"
  exit 1
fi

# 🟢 Descargar la página (con curl)
curl -s "$URL" -o "$FICHERO"

# 🟢 Contar cuántas veces aparece la palabra (sin distinguir mayúsculas)
OCURRENCIAS=$(grep -io "$PALABRA" "$FICHERO" | wc -l)

# 🟢 Si no aparece la palabra
if [ "$OCURRENCIAS" -eq 0 ]; then
  echo "> No se ha encontrado la palabra \"$PALABRA\""
else
  # 🟢 Obtener el número de línea donde aparece por primera vez
  LINEA=$(grep -inm 1 "$PALABRA" "$FICHERO" | cut -d: -f1)

  echo "> La palabra \"$PALABRA\" aparece $OCURRENCIAS veces"
  echo "> Aparece por primera vez en la línea $LINEA"
fi