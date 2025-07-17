
# Auto-Reco 🌐🔍
<img width="1024" height="1024" alt="ChatGPT Image 16 jul 2025, 22_58_20" src="https://github.com/user-attachments/assets/3a71d3b6-a7e3-4967-a9ac-2aa43f526780" />

Reconocimiento automatizado de red para Linux y Windows. Usa `nmap` para escanear toda la red local, identificar dispositivos, puertos abiertos, servicios y sistemas operativos.

## 📦 Características

- Escaneo completo de la red local (`/24`)
- Detección automática de la IP del host
- Salida organizada en carpeta `reco_output`
- Compatible con Linux (bash) y Windows (PowerShell)

---

## 🐧 Linux

### Requisitos
- Ubuntu/Debian con `bash`
- `nmap` instalado

### Uso

```bash
chmod +x auto_reco.sh
./auto_reco.sh
````


---

## 🪟 Windows

### Requisitos

* Windows 10/11
* Nmap instalado en `C:\Program Files (x86)\Nmap\`

### Uso

1. Abre PowerShell como administrador
2. Ejecuta el script:

```powershell
.\auto_reco.ps1
```

---

## 📁 Resultados

Los resultados (`.nmap`, `.gnmap`, `.xml`) se guardan en la carpeta `reco_output/` y pueden abrirse en herramientas como:

* Zenmap
* Nmap Parser
* Notepad++

---

## 📜 Licencia

MIT — libre para usar y modificar

## 📫 Autor

[github.com/panchoxgrande](https://github.com/panchoxgrande)

```
