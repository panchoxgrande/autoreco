# Auto-Reco (Windows) - Reconocimiento de red usando Nmap

$nmapPath = "C:\Program Files (x86)\Nmap\nmap.exe"
if (!(Test-Path $nmapPath)) {
    Write-Host "❌ Nmap no está instalado. Descárgalo desde https://nmap.org/download.html"
    exit
}

$ip = (Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet" | Where-Object {$_.PrefixOrigin -eq "Dhcp"}).IPAddress
if (-not $ip) {
    $ip = (Get-NetIPAddress -AddressFamily IPv4 | Select-Object -First 1).IPAddress
}
$subnet = ($ip -replace '\d+$','0') + "/24"

Write-Host "🌐 Escaneando red local: $subnet"
New-Item -ItemType Directory -Path ".\reco_output" -Force | Out-Null

& $nmapPath -sV -O -oA .\reco_output\reco_$ip $subnet

Write-Host "✅ Escaneo completo. Resultados en .\reco_output\"
