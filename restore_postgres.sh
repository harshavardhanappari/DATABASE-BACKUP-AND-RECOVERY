#!/bin/bash
# restore_postgres.sh

DB_NAME="your_database"
DB_USER="your_user"
BACKUP_FILE="/backups/postgres/your_database_2025-06-30.backup"

PGPASSWORD="your_password" pg_restore -U $DB_USER -d $DB_NAME -c $BACKUP_FILE

echo "Restore completed from $BACKUP_FILE"
