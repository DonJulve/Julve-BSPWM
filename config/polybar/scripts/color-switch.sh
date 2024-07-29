#!/usr/bin/env bash

SDIR="$HOME/.config/polybar/scripts"

# Launch Rofi
MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
-theme $SDIR/rofi/styles.rasi \
<<< " Amarillo| Ámbar| Azul| Azul-claro| Azul-gris| Azul-verdoso| Cian| Gris|\
 Índigo| Lima| Marrón| Morado| Morado-oscuro| Naranja| Naranja-oscuro| Rojo|\
 Rosa| Verde| Verde-claro| Amarillo-Dark| Ámbar-Dark| Azul-Dark| Azul-claro-Dark|\
 Azul-gris-Dark| Azul-verdoso-Dark| Cian-Dark| Gris-Dark| Índigo-Dark| Lima-Dark|\
 Marrón-Dark| Morado-Dark| Morado-oscuro-Dark| Naranja-Dark| Naranja-oscuro-Dark|\
 Rojo-Dark| Rosa-Dark| Verde-Dark| Verde-claro-Dark|")"
            case "$MENU" in
				## Light Colors
				*Ámbar) "$SDIR"/colors-light.sh --amber ;;
				*Azul) "$SDIR"/colors-light.sh --blue ;;
				*Azul-gris) "$SDIR"/colors-light.sh --blue-gray ;;
				*Marrón) "$SDIR"/colors-light.sh --brown ;;
				*Cian) "$SDIR"/colors-light.sh --cyan ;;
				*Naranja-oscuro) "$SDIR"/colors-light.sh --deep-orange ;;
				*Morado-oscuro) "$SDIR"/colors-light.sh --deep-purple ;;
				*Verde) "$SDIR"/colors-light.sh --green ;;
				*Gris) "$SDIR"/colors-light.sh --gray ;;
				*Índigo) "$SDIR"/colors-light.sh --indigo ;;
				*Azul-claro) "$SDIR"/colors-light.sh --light-blue ;;
				*Verde-claro) "$SDIR"/colors-light.sh --light-green ;;
				*Lima) "$SDIR"/colors-light.sh --lime ;;
				*Naranja) "$SDIR"/colors-light.sh --orange ;;
				*Rosa) "$SDIR"/colors-light.sh --pink ;;
				*Morado) "$SDIR"/colors-light.sh --purple ;;
				*Rojo) "$SDIR"/colors-light.sh --red ;;
				*Azul-verdoso) "$SDIR"/colors-light.sh --teal ;;
				*Amarillo) "$SDIR"/colors-light.sh --yellow ;;
				## Dark Colors
				*Ámbar-Dark) "$SDIR"/colors-dark.sh --amber ;;
				*Azul-Dark) "$SDIR"/colors-dark.sh --blue ;;
				*Azul-gris-Dark) "$SDIR"/colors-dark.sh --blue-gray ;;
				*Marrón-Dark) "$SDIR"/colors-dark.sh --brown ;;
				*Cian-Dark) "$SDIR"/colors-dark.sh --cyan ;;
				*Naranja-oscuro-Dark) "$SDIR"/colors-dark.sh --deep-orange ;;
				*Morado-oscuro-Dark) "$SDIR"/colors-dark.sh --deep-purple ;;
				*Verde-Dark) "$SDIR"/colors-dark.sh --green ;;
				*Gris-Dark) "$SDIR"/colors-dark.sh --gray ;;
				*Índigo-Dark) "$SDIR"/colors-dark.sh --indigo ;;
				*Azul-claro-Dark) "$SDIR"/colors-dark.sh --light-blue ;;
				*Verde-claro-Dark) "$SDIR"/colors-dark.sh --light-green ;;
				*Lima-Dark) "$SDIR"/colors-dark.sh --lime ;;
				*Naranja-Dark) "$SDIR"/colors-dark.sh --orange ;;
				*Rosa-Dark) "$SDIR"/colors-dark.sh --pink ;;
				*Morado-Dark) "$SDIR"/colors-dark.sh --purple ;;
				*Rojo-Dark) "$SDIR"/colors-dark.sh --red ;;
				*Azul-verdoso-Dark) "$SDIR"/colors-dark.sh --teal ;;
				*Amarillo-Dark) "$SDIR"/colors-dark.sh --yellow				
            esac
