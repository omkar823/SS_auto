#!/bin/bash

DATE=$(date +%F)
BACKUP_DIR="../backups/$DATE"
MYSQL_USER="root"
MYSQL_PASS="password"
PG_USER="postgres"

mkdir -p $BACKUP_DIR

echo "Backup started at $(date)"

# Code backup
tar -czf $BACKUP_DIR/code_backup.tar.gz ../

# MySQL
mysqldump -u $MYSQL_USER -p$MYSQL_PASS --all-databases > $BACKUP_DIR/mysql.sql

# PostgreSQL
sudo -u $PG_USER pg_dumpall > $BACKUP_DIR/postgres.sql

# Redis
redis-cli SAVE
cp /var/lib/redis/dump.rdb $BACKUP_DIR/redis.rdb

echo "Backup completed at $(date)"
