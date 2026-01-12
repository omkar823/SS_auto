#!/bin/bash

THRESHOLD=80
LOGFILE="../logs/monitor.log"

CPU=$(top -bn1 | awk '/Cpu/ {print 100-$8}')
DISK=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ ${CPU%.*} -gt $THRESHOLD ]; then
  echo "$(date): High CPU Usage: $CPU%" >> $LOGFILE
fi

if [ $DISK -gt $THRESHOLD ]; then
  echo "$(date): High Disk Usage: $DISK%" >> $LOGFILE
fi
