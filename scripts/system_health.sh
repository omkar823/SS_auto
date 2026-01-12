#!/bin/bash

LOGFILE="../logs/system_health.log"

echo "===== SYSTEM HEALTH CHECK =====" >> $LOGFILE
date >> $LOGFILE

echo "Hostname: $(hostname)" >> $LOGFILE
echo "Uptime:" >> $LOGFILE
uptime >> $LOGFILE

echo "CPU Usage:" >> $LOGFILE
top -bn1 | grep "Cpu(s)" >> $LOGFILE

echo "Memory Usage:" >> $LOGFILE
free -h >> $LOGFILE

echo "Disk Usage:" >> $LOGFILE
df -h >> $LOGFILE

echo "---------------------------------" >> $LOGFILE
