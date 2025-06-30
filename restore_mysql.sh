#!/bin/bash
# restore_mysql.sh

DB_NAME="your_database"
DB_USER="your_user"
DB_PASS="your_password"
BACKUP_FILE="/backups/mysql/your_database_2025-06-30.sql"

mysql -u $DB_USER -p$DB_PASS $DB_NAME < $BACKUP_FILE

echo "Restore completed from $BACKUP_FILE"
