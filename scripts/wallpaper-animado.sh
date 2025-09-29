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
    elif [ "$monitor_count" -eq 2 ]; then
	

    	# Primer monitor - 1920x1080+0+0
    	xwinwrap -g 1920x1080+0+0 -ni -s -st -sp -b -nf -ov -- mpv -wid WID --loop --no-audio --no-resume-playback --no-terminal --msg-level=all=no ~/Wallpapers/wallpaper.mp4 2>/dev/null &
    
    	# Segundo monitor: 1366x768+1920+0  
    	xwinwrap -g 1366x768+1920+0 -ni -s -st -sp -b -nf -ov -- mpv -wid WID --loop --no-audio --no-resume-playback --no-terminal --msg-level=all=no ~/Wallpapers/wallpaper.mp4 2>/dev/null &
    
    fi
    
fi
