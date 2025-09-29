#!/bin/bash

# Script para escanear y conectarse a una red WiFi usando nmcli

# Interfaz de red
IFACE="wlan0"

echo "=== Escaneando redes WiFi disponibles ==="
nmcli dev wifi list

echo ""
read -p "Introduce el SSID de la red a la que quieres conectarte: " SSID
read -s -p "Introduce la contraseña de la red: " PASS
echo ""

# Eliminar perfil previo con el mismo nombre
nmcli con delete "$SSID" 2>/dev/null

# Crear conexión
nmcli con add type wifi con-name "$SSID" ifname "$IFACE" ssid "$SSID"

# Configurar seguridad
nmcli con modify "$SSID" wifi-sec.key-mgmt wpa-psk
nmcli con modify "$SSID" wifi-sec.psk "$PASS"

# Conectar
echo "=== Conectando a $SSID... ==="
nmcli con up "$SSID"

# Verificar conexión
if [ $? -eq 0 ]; then
    echo "✅ Conectado exitosamente a $SSID"
else
    echo "❌ No se pudo conectar a $SSID"
fi

