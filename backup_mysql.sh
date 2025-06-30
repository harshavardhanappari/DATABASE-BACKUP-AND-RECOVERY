#!/bin/bash
# backup_mysql.sh

DB_NAME="your_database"
DB_USER="your_user"
DB_PASS="your_password"
BACKUP_PATH="/backups/mysql"
DATE=$(date +%F)

mkdir -p $BACKUP_PATH

mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_PATH/${DB_NAME}_$DATE.sql

echo "Backup completed: ${DB_NAME}_$DATE.sql"
