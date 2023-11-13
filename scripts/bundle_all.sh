#!/bin/bash

# Navigate to the script's directory
cd "$(dirname "$0")"

# Define the source and destination directories
KEY_LAYOUTS_DIR="../key_layouts"
SCRIPT_DIR="copy_keylayouts.sh"
DEST_DIR="../bin/ChiliKeys.app/Contents/Resources"

# Copy the files from the source to the destination
cp -R "$KEY_LAYOUTS_DIR" "$DEST_DIR"
cp -R "$SCRIPT_DIR" "$DEST_DIR"

echo "Files copied successfully."