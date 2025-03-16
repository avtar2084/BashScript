#!/bin/bash

# Define source and destination directories
SOURCE_DIR="/path/to/source/directory"
DEST_DIR="/path/to/destination/directory"

# Create a timestamp
TIMESTAMP=$(date +"%Y%m%d%H%M%S")

# Create a backup directory with the timestamp
BACKUP_DIR="$DEST_DIR/backup_$TIMESTAMP"
mkdir -p "$BACKUP_DIR"

# Copy files from source to backup directory
cp -r "$SOURCE_DIR"/* "$BACKUP_DIR"

# Print a message indicating the backup is complete
echo "Backup completed successfully. Files are backed up to $BACKUP_DIR"