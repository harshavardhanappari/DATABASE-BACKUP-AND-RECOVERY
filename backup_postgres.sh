#!/bin/bash
# backup_postgres.sh

DB_NAME="your_database"
DB_USER="your_user"
BACKUP_PATH="/backups/postgres"
DATE=$(date +%F)

mkdir -p $BACKUP_PATH

PGPASSWORD="your_password" pg_dump -U $DB_USER -F c $DB_NAME > $BACKUP_PATH/${DB_NAME}_$DATE.backup

echo "Backup completed: ${DB_NAME}_$DATE.backup"
