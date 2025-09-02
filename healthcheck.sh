#!/bin/bash
# healthcheck.sh - Einfacher AOK Gesundheitscheck

echo
echo "Das ist mein AOK Gesundheitscheck"
echo "Datum: $(date)"
echo "-----------------------------"

echo
echo "=== Laufzeit ==="
uptime
echo "-----------------------------"

echo
echo "=== CPU Load ==="
cat /proc/loadavg
echo "-----------------------------"

echo
echo "=== Memory ==="
free -h
echo "-----------------------------"

echo
echo "=== Top 5 Prozesse nach CPU und Memory ==="
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo "-----------------------------"

