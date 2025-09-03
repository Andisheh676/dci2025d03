#!/bin/bash

# Funktion 1: Datum und Uhrzeit anzeigen
show_date() {
echo "Aktuelles Datum und Uhrzeit:"
date
}

# Funktion 2: System-Info anzeigen
system_info() {
echo "System Informationen:"
uname -a
}

# Funktion 3: Speicherplatz prüfen
check_disk() {
echo "Speicherplatz Übersicht:"
df -h
}

# Funktion 4: Backup erstellen
backup_home() {
tar -czf backup_$(date +%F).tar.gz $HOME
echo "Backup von HOME erstellt: backup_$(date +%F).tar.gz"
}

# Menü
echo "Bitte wählen:"
echo "1) Datum anzeigen"
echo "2) System-Info"
echo "3) Speicherplatz prüfen"
echo "4) Backup HOME"
read choice

case $choice in
1) show_date ;;
2) system_info ;;
3) check_disk ;;
4) backup_home ;;
*) echo "Ungültige Eingabe" ;;
esac
