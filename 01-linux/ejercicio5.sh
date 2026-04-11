#!/bin/bash

# 🟢 Verificar número de parámetros
if [ "$#" -ne 2 ]; then
  echo "> Se necesitan únicamente dos parámetros para ejecutar este script"
  echo "Uso: $0 <URL> <palabra_a_buscar>"
  exit 1
fi

# 🟢 Parámetros
URL="$1"
PALABRA="$2"
FICHERO="pagina.html"

# 🟢 Descargar la página
curl -s "$URL" -o "$FICHERO"

# 🟢 Contar cuántas veces aparece la palabra (ignorando mayúsculas)
OCURRENCIAS=$(grep -io "$PALABRA" "$FICHERO" | wc -l)

# 🟢 Si no aparece la palabra
if [ "$OCURRENCIAS" -eq 0 ]; then
  echo "> No se ha encontrado la palabra \"$PALABRA\""
  exit 0
fi

# 🟢 Obtener número de línea de la primera aparición
LINEA=$(grep -inm 1 "$PALABRA" "$FICHERO" | cut -d: -f1)

# 🟢 Mostrar mensaje según el número de ocurrencias
if [ "$OCURRENCIAS" -eq 1 ]; then
  echo "> La palabra \"$PALABRA\" aparece 1 vez"
  echo "> Aparece únicamente en la línea $LINEA"
else
  echo "> La palabra \"$PALABRA\" aparece $OCURRENCIAS veces"
  echo "> Aparece por primera vez en la línea $LINEA"
fi
