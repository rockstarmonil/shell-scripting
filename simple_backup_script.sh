#!/bin/bash

SOURCE_DIR="$HOME/Desktop/shell-scripting"
BACKUP_DIR="$HOME/Desktop/Backup"

DATE=$(date +%F)  # Corrected the date command syntax

DATE=$(date+%F)

FILENAME="script-backup-$DATE.tar.gz"

#-----Creating Backup Directory If Not Exists ------

mkdir -p "$BACKUP_DIR"

#-----Creating the Backup---------------------------

tar -czvf "$BACKUP_DIR/$FILENAME" "$SOURCE_DIR"

#-----Success Message------------------------------

echo "Backup Created: $BACKUP_DIR/$FILENAME"

echo "Backup Created : $BACKUP_DIR/$FILENAME"
