#!/bin/bash

# SYSTEM INFORMATION
sys_info=$(uname -a)

# PHYSICAL CPUs
phys_cpus=$(grep "physical id" /proc/cpuinfo | sort -u | wc -l)

# VIRTUAL CPUs
virt_cpus=$(grep "processor" /proc/cpuinfo | wc -l)

# MEMORY INFO
mem_total=$(free -m | awk '/^Mem:/ {print $2}')
mem_used=$(free -m | awk '/^Mem:/ {print $3}')
mem_percentage=$(free -m | awk '/^Mem:/ {printf "%.2f", $3/$2*100}')

# DISK INFO
disk_total_val=$(df -m | grep "^/dev/" | grep -vE "/boot|/dev/shm" | awk '{sum+=$2} END {print sum}')
disk_used_val=$(df -m | grep "^/dev/" | grep -vE "/boot|/dev/shm" | awk '{sum+=$3} END {print sum}')
disk_percentage=$(awk -v used=$disk_used_val -v total=$disk_total_val 'BEGIN {printf("%.0f"), used/total*100}')

# CPU USAGE
cpu_idle=$(vmstat 1 2 | tail -1 | awk '{print $15}')
cpu_usage=$(expr 100 - $cpu_idle)

# LAST REBOOT
last_reboot=$(who -b | awk '{print $3 " " $4}')

# LVM USAGE
lvm_status=$(if [ $(lsblk | grep "lvm" | wc -l) -gt 0 ]; then echo "yes"; else echo "no"; fi)

# TCP CONNECTIONS
tcp_conns=$(ss -t | grep ESTAB | wc -l)

# LOGGED IN USERS
logged_users=$(users | wc -w)

# NETWORK INFO
ip_addr=$(hostname -I | awk '{print $1}')
mac_addr=$(ip a | grep -E 'ether' | awk '{print $2}')

# SUDO COMMANDS EXECUTED
sudo_cmds=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

# DISPLAY THE INFO
wall "  System Info: $sys_info
    Physical CPUs: $phys_cpus
    Virtual CPUs: $virt_cpus
    Memory Usage: $mem_used/${mem_total}MB ($mem_percentage%)
    Disk Usage: $disk_used_val/${disk_total_val}MB ($disk_percentage%)
    CPU Usage: $cpu_usage%
    Last Reboot: $last_reboot
    LVM in use: $lvm_status
    TCP Connections: $tcp_conns ESTABLISHED
    Logged in Users: $logged_users
    Network Info: IP $ip_addr ($mac_addr)
    Commands executed with sudo: $sudo_cmds"
