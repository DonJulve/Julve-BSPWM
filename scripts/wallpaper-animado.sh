#!/bin/bash

# Verificar si xwinwrap está en ejecución
if pgrep -x "xwinwrap" > /dev/null; then
    killall xwinwrap 2>/dev/null
    killall mpv 2>/dev/null
    sleep 1
else
    # Detener cualquier instancia previa por si acaso
    killall xwinwrap 2>/dev/null
    killall mpv 2>/dev/null
    sleep 1
    
    monitor_count=$(xrandr --query | grep " connected" | wc -l)

    if [ "$monitor_count" -eq 1 ]; then
    	xwinwrap -fs -fdt -ni -b -nf -un -o 1.0 -debug -- mpv -wid WID --loop --no-audio --no-resume-playback --no-terminal --msg-level=all=no ~/Wallpapers/wallpaper.mp4 2>/dev/null &
    else
        # Varios monitores: obtener resoluciones y posiciones
        xrandr --query | grep " connected" | while read -r line; do
            geometry=$(echo "$line" | grep -oP '\d+x\d+\+\d+\+\d+')
            if [ -n "$geometry" ]; then
                xwinwrap -g "$geometry" -ni -s -st -sp -b -nf -ov -- \
                mpv -wid WID --loop --no-audio --no-resume-playback --no-terminal \
                --msg-level=all=no ~/Wallpapers/wallpaper.mp4 2>/dev/null &
            fi
        done
    fi
    
fi
