#!/bin/bash

# Define the source and destination directories
KEY_LAYOUTS_DIR="../key_layouts"
SCRIPT_DIR="../scripts/copy_keylayouts.sh"
DEST_DIR="../bin/Install.app/Contents/Resources"

# Copy the files from the source to the destination
cp -R "$KEY_LAYOUTS_DIR" "$DEST_DIR"
cp -R "$SCRIPT_DIR" "$DEST_DIR"

echo "Files copied successfully."