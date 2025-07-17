#!/bin/bash
# Auto-Reco (Linux) - Reconocimiento automático de red con Nmap

if ! command -v nmap &> /dev/null; then
  echo "❌ Nmap no está instalado. Instalando..."
  sudo apt update && sudo apt install nmap -y
fi

echo "🔍 Detectando IP local..."
IP=$(hostname -I | awk '{print $1}')
SUBNET=$(echo "$IP" | awk -F. '{print $1"."$2"."$3".0/24"}')

echo "🌐 Escaneando red local $SUBNET..."
mkdir -p reco_output
nmap -sV -O -oA reco_output/reco_$IP $SUBNET

echo "✅ Escaneo completo. Resultados en la carpeta reco_output/"
