#!/bin/bash

APP_DIR="$HOME/projects/SS_auto"
LOG_DIR="$APP_DIR/logs"
LOGFILE="$LOG_DIR/deploy.log"

# Create logs directory if missing
mkdir -p "$LOG_DIR"

echo "Deployment started at $(date)" >> "$LOGFILE"

cd "$APP_DIR" || exit 1
git pull origin main >> "$LOGFILE" 2>&1

echo "Deployment completed at $(date)" >> "$LOGFILE"
