#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x

dir="~/.config/polybar/scripts/rofi"
uptime=$(uptime -p | sed -e 's/up //g')

# Traducir la salida
uptime=$(echo $uptime | sed -e 's/years/años/g' \
                            -e 's/year/año/g' \
                            -e 's/months/meses/g' \
                            -e 's/month/mes/g' \
                            -e 's/weeks/semanas/g' \
                            -e 's/week/semana/g' \
                            -e 's/days/días/g' \
                            -e 's/day/día/g' \
                            -e 's/hours/horas/g' \
                            -e 's/hour/hora/g' \
                            -e 's/minutes/minutos/g' \
                            -e 's/minute/minuto/g')

rofi_command="rofi -no-config -theme $dir/powermenu.rasi"

# Options
#shutdown=" Shutdown"
#reboot=" Restart"
#lock=" Lock"
#suspend=" Sleep"
#logout=" Logout"

shutdown=" Apagar"
reboot=" Reiniciar"
lock=" Bloquear"
suspend=" Hibernar"
logout=" Cerrar Sesión"


# Confirmation
confirm_exit() {
	rofi -dmenu\
        -no-config\
		-i\
		-no-fixed-num-lines\
		-p "¿Estás seguro? : "\
		-theme $dir/confirm.rasi
}

# Message
msg() {
	rofi -no-config -theme "$dir/message.rasi" -e "Opciones existentes  -  si / s / no / n"
}

# Variable passed to rofi
options="$lock\n$suspend\n$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | $rofi_command -p "Tiempo de uso: $uptime" -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
		ans=$(confirm_exit &)
		if [[ $ans == "si" || $ans == "SI" || $ans == "s" || $ans == "S" ]]; then
			systemctl poweroff
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
    $reboot)
		ans=$(confirm_exit &)
		if [[ $ans == "si" || $ans == "SI" || $ans == "s" || $ans == "S" ]]; then
			systemctl reboot
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
    $lock)
		# if [[ -f /usr/bin/i3lock-fancy ]]; then
		# 	i3lock-fancy
		# elif [[ -f /usr/bin/betterlockscreen ]]; then
		# 	betterlockscreen -l
		# fi
    betterlockscreen -l blur
        ;;
    $suspend)
		ans=$(confirm_exit &)
		if [[ $ans == "si" || $ans == "SI" || $ans == "s" || $ans == "S" ]]; then
			mpc -q pause
			amixer set Master mute
			systemctl suspend
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
    $logout)
		ans=$(confirm_exit &)
		if [[ $ans == "si" || $ans == "SI" || $ans == "s" || $ans == "S" ]]; then
			if [[ "$DESKTOP_SESSION" == "Openbox" ]]; then
				openbox --exit
			elif [[ "$DESKTOP_SESSION" == "bspwm" ]]; then
				bspc quit
			elif [[ "$DESKTOP_SESSION" == "i3" ]]; then
				i3-msg exit
			fi
		elif [[ $ans == "no" || $ans == "NO" || $ans == "n" || $ans == "N" ]]; then
			exit 0
        else
			msg
        fi
        ;;
esac
