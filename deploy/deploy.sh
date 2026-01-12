#!/bin/bash

APP_DIR="$HOME/projects/SS_auto"
LOGFILE="../logs/deploy.log"

echo "Deployment started at $(date)" >> $LOGFILE

cd $APP_DIR || exit 1
git pull origin main >> $LOGFILE 2>&1

echo "Deployment completed at $(date)" >> $LOGFILE
