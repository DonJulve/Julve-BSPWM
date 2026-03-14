#!/bin/bash

echo "Elige dónde has puesto el monitor portátil (DP-2):"
echo "  1) A la IZQUIERDA de la pantalla principal"
echo "  2) A la DERECHA de la pantalla principal"
echo "------------------------------------------------"
read -p "Introduce 1 o 2: " opcion

case $opcion in
    1)
        echo "Configurando monitor a la IZQUIERDA..."
        xrandr --output DP-4 --primary --mode 1920x1080 --rate 144.00 --output DP-2 --mode 1920x1080 --rate 60.00 --left-of DP-4
        ;;
    2)
        echo "Configurando monitor a la DERECHA..."
        xrandr --output DP-4 --primary --mode 1920x1080 --rate 144.00 --output DP-2 --mode 1920x1080 --rate 60.00 --right-of DP-4
        ;;
    *)
        echo "Error: Opción no válida. Debes introducir 1 o 2."
        exit 1
        ;;
esac

feh --bg-fill /home/julve/Wallpapers/Cyberpunk.jpg

bspc monitor DP-4 -d 1 2 3 4 5 6 7 8 9 10

bspc monitor DP-2 -d Ext

echo "¡Pantallas configuradas!"
