#!/bin/sh

# Verificar si eth0 tiene IP
ETH_IP=$(/usr/sbin/ifconfig eth0 2>/dev/null | grep "inet " | awk '{print $2}')
WLAN_IP=$(/usr/sbin/ifconfig wlan0 2>/dev/null | grep "inet " | awk '{print $2}')

if [ -n "$ETH_IP" ]; then
    # Conexión por cable
    echo "%{F#ffffff}  %{F#ffffff}$ETH_IP%{u-}"
elif [ -n "$WLAN_IP" ]; then
    # Conexión por WiFi
    echo "%{F#ffffff}   %{F#ffffff}$WLAN_IP%{u-}"
else
    # Sin conexión
    echo "%{F#ff0000}   Sin conexión%{u-}"
fi
