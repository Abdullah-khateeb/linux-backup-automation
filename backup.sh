#!/bin/bash

# === Configuration ===
SOURCE_DIR="$HOME/Documents"          # Folder to backup
BACKUP_DIR="$HOME/Backup"            # Backup destination
LOG_DIR="$HOME/Backup/logs"          # Log folder

# Create backup and log directories if they don't exist
mkdir -p "$BACKUP_DIR"
mkdir -p "$LOG_DIR"

# Timestamp for backup
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

# Run the backup
tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$SOURCE_DIR" .

# Log the result
echo "$(date +"%Y-%m-%d %H:%M:%S") - Backup created: $BACKUP_NAME" >> "$LOG_DIR/backup.log"

# Optional: Print success message
echo "Backup completed: $BACKUP_DIR/$BACKUP_NAME"

