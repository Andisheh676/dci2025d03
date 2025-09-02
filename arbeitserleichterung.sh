#!/bin/bash

# Arbeitserleichterung Script
# Ausgabe wird in workhelper_output.txt gespeichert

OUTPUT_FILE="workhelper_output.txt"

# Funktion 1: System Info
system_info() {
    echo "======== System Info ========" >> "$OUTPUT_FILE"
    echo "Datum: $(date)" >> "$OUTPUT_FILE"
    echo "Laufzeit:" >> "$OUTPUT_FILE"
    uptime >> "$OUTPUT_FILE"
    echo >> "$OUTPUT_FILE"
}

# Funktion 2: CPU & Memory
cpu_memory() {
    echo "======== CPU & Memory ========" >> "$OUTPUT_FILE"
    echo "CPU Load:" >> "$OUTPUT_FILE"
    cat /proc/loadavg >> "$OUTPUT_FILE"
    echo >> "$OUTPUT_FILE"
    echo "Memory:" >> "$OUTPUT_FILE"
    free -h >> "$OUTPUT_FILE"
    echo >> "$OUTPUT_FILE"
}

# Funktion 3: Top Prozesse
top_prozesse() {
    echo "======== Top 5 Prozesse ========" >> "$OUTPUT_FILE"
    ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6 >> "$OUTPUT_FILE"
    echo >> "$OUTPUT_FILE"
}

# Funktion 4: Netzwerk & Disk
netzwerk_disk() {
    echo "======== Block Devices ========" >> "$OUTPUT_FILE"
    lsblk >> "$OUTPUT_FILE"
    echo >> "$OUTPUT_FILE"
    echo "======== Disk Usage ========" >> "$OUTPUT_FILE"
    df -h | grep -E '^/dev/' >> "$OUTPUT_FILE"
    echo >> "$OUTPUT_FILE"
    echo "======== Netzwerk ========" >> "$OUTPUT_FILE"
    ip a >> "$OUTPUT_FILE"
    echo >> "$OUTPUT_FILE"
    echo "======== TCP Ports ========" >> "$OUTPUT_FILE"
    ss -tuln | grep LISTEN >> "$OUTPUT_FILE"
    echo >> "$OUTPUT_FILE"
}

# Hauptprogramm
> "$OUTPUT_FILE"   # vorherige Datei leeren
system_info
cpu_memory
top_prozesse
netzwerk_disk

echo "Healthcheck abgeschlossen. Ausgabe in $OUTPUT_FILE"
