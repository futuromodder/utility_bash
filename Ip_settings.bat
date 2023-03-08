@echo off
set /p choice=Do you want to set IP configuration to static or DHCP (s/d)?
if /i "%choice%"=="s" (
    netsh interface ip set address "Ethernet" static 192.168.40.96 255.255.255.0 192.168.40.250
    echo Cambiato il tuo indirizzo ip in statico, buona navigazione
	pause
) else if /i "%choice%"=="d" (
    netsh interface ip set address "Ethernet" dhcp
    echo IP configuration set to DHCP
) else (
    echo Invalid choice
)