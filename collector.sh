#!/bin/bash
# Enterprise Log Pipeline - Data Collector Agent

LOG_FILE="system_metrics.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
MEM_FREE=$(free -m | awk '/Mem:/ {print $4}')

echo "[$TIMESTAMP] [INFO] CPU_Usage: ${CPU_USAGE}% | Free_Memory: ${MEM_FREE}MB" >> "$LOG_FILE"
