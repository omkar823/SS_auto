#!/bin/bash
set -e

# ===============================
# CONFIG
# ===============================
BASE_DIR="/home/devops/projects/SS_auto/backups"
PROJECT_DIR="/home/devops/projects/SS_auto"
SCRIPT_DIR="/home/devops/projects/SS_auto/scripts"
MONITOR_DIR="/home/devops/projects/SS_auto/monitoring"

MYSQL_USER="root"
MYSQL_PASSWORD="YOUR_MYSQL_PASSWORD"

REDIS_DUMP="/var/lib/redis/dump.rdb"

DATE=$(date +%F)
TIME=$(date +%H-%M-%S)
BACKUP_DIR="$BASE_DIR/$DATE/$TIME"

# ===============================
# CREATE DIRECTORY
# ===============================
mkdir -p "$BACKUP_DIR"
echo "Backup started at $BACKUP_DIR"

# ===============================
# CODE BACKUP
# ===============================
tar -czf "$BACKUP_DIR/code.tar.gz" \
  --exclude=backups \
  --exclude=.git \
  --exclude=logs \
  "$PROJECT_DIR"

echo "Code backup done"

# ===============================
# MYSQL BACKUP
# ===============================
mysqldump -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" \
  --all-databases \
  --single-transaction \
  --routines \
  --events \
  > "$BACKUP_DIR/mysql.sql"

echo "MySQL backup done"

# ===============================
# POSTGRES BACKUP
# ===============================
sudo -u postgres pg_dumpall > "$BACKUP_DIR/postgres.sql"
echo "Postgres backup done"

# ===============================
# REDIS BACKUP
# ===============================
redis-cli SAVE
cp "$REDIS_DUMP" "$BACKUP_DIR/redis.rdb"
echo "Redis backup done"

# ===============================
# MONITORING & ALERT SCRIPTS BACKUP
# ===============================
cp "$MONITOR_DIR/monitor.sh"        "$BACKUP_DIR/"
cp "$MONITOR_DIR/monitoring.py"     "$BACKUP_DIR/"
cp "$MONITOR_DIR/alert_mail.sh"     "$BACKUP_DIR/"
cp "/home/devops/projects/SS_auto/health_check.sh" "$BACKUP_DIR/"
cp "/home/devops/projects/SS_auto/system_health.sh" "$BACKUP_DIR/"

echo "Monitoring & alert scripts backed up"

# ===============================
# PERMISSIONS
# ===============================
chown -R devops:devops "$BACKUP_DIR"

echo "Backup completed successfully "

