#!/bin/bash

# Source and destination directories
SOURCE_DIR="/Users/solomonchang/Library/Mobile Documents/com~apple~CloudDocs/Documents/dev/FSPro_backup/layouts"
DESTINATION_DIR="/Volumes/FS PRO/layouts"

# Check if the source directory exists
if [ -d "$SOURCE_DIR" ]; then
    # List and remove the contents of the destination directory
    echo "Deleting files from $DESTINATION_DIR:"
    find "$DESTINATION_DIR" -type f -exec echo "Deleting: {}" \; -exec rm {} \;

    # Copy the contents from the source to the destination directory
    echo "Copying files to $DESTINATION_DIR:"
    find "$SOURCE_DIR" -type f -exec echo "Copying: {}" \; -exec cp {} "$DESTINATION_DIR" \;
    echo "Contents copied successfully."
else
    echo "Source directory not found."
fi

