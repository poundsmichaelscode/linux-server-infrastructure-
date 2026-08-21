#!/bin/bash

echo "================================"
echo "     INFRAFORGE SECURITY CHECK"
echo "================================"

echo
echo "=== HOSTNAME ==="
hostnamectl --static

echo
echo "=== IP ADDRESS ==="
hostname -I

echo
echo "=== ROUTING ==="
ip route

echo
echo "=== SSH ==="
sudo systemctl is-active ssh

echo
echo "=== FIREWALL ==="
sudo ufw status verbose

echo
echo "=== LISTENING PORTS ==="
sudo ss -tulpn

echo
echo "=== DISK ==="
df -h

echo
echo "=== MEMORY ==="
free -h

echo
echo "=== UPTIME ==="
uptime
