#!/bin/bash

# Function to display CPU usage
cpu_usage() {
  echo "Total CPU Usage:"
  mpstat | awk '/all/ {printf "User: %.2f%%, System: %.2f%%, Idle: %.2f%%\n", $3, $5, $12}'
}

# Function to display memory usage
memory_usage() {
  echo "Total Memory Usage:"
  free -h | awk '/^Mem:/ {printf "Used: %s, Free: %s, Usage: %.2f%%\n", $3, $4, ($3/$2)*100}'
}

# Function to display disk usage
disk_usage() {
  echo "Total Disk Usage:"
  df -h --total | awk '/^total/ {printf "Used: %s, Free: %s, Usage: %s\n", $3, $4, $5}'
}

# Function to display top 5 processes by CPU usage
top_cpu_processes() {
  echo "Top 5 Processes by CPU Usage:"
  ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
}

# Function to display top 5 processes by memory usage
top_mem_processes() {
  echo "Top 5 Processes by Memory Usage:"
  ps -eo pid,comm,%mem --sort=-%mem | head -n 6
}

# Stretch goal: Additional stats
additional_stats() {
  echo "OS Version: $(lsb_release -d | awk -F'\t' '{print $2}')"
  echo "Uptime: $(uptime -p)"
  echo "Load Average: $(uptime | awk -F'load average:' '{print $2}' | xargs)"
  echo "Logged in Users: $(who | wc -l)"
  echo "Failed Login Attempts: $(grep 'Failed password' /var/log/auth.log 2>/dev/null | wc -l)"
}

# Run all functions
echo "=== Server Stats ==="
cpu_usage
echo
memory_usage
echo
disk_usage
echo
top_cpu_processes
echo
top_mem_processes
echo
echo "=== Additional Stats ==="
additional_stats
