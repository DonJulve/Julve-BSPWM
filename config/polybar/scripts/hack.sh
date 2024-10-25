#!/usr/bin/env bash

# Directorio de configuración de Polybar
DIR="$HOME/.config/polybar"

# Archivo de configuración donde se encuentran los colores
CONFIG_FILE="$DIR/colors.ini"

# Intercambiar contenidos entre las carpetas auxiliar y auxiliar_conf
mv "$DIR"/auxiliar "$DIR"/temp_aux
mv "$DIR"/auxiliar_conf "$DIR"/auxiliar
mv "$DIR"/temp_aux "$DIR"/auxiliar_conf

# Comprobar si el archivo de configuración contiene los colores deseados
if grep -q "shade1 = #B71C1C" "$CONFIG_FILE" &&
   grep -q "shade2 = #EF6C00" "$CONFIG_FILE" &&
   grep -q "shade3 = #FBC02D" "$CONFIG_FILE" &&
   grep -q "shade4 = #7CB342" "$CONFIG_FILE" &&
   grep -q "shade5 = #2196F3" "$CONFIG_FILE" &&
   grep -q "shade6 = #5C6BC0" "$CONFIG_FILE" &&
   grep -q "shade7 = #9575CD" "$CONFIG_FILE" &&
   grep -q "shade8 = #C62828" "$CONFIG_FILE"; then
    
    cp "$DIR"/auxiliar/rgb/* "$DIR"/
    
    
else
    cp "$DIR"/auxiliar/no-rgb/* "$DIR"/
fi

# Reiniciar Polybar
polybar-msg cmd restart > /dev/null 2>&1
