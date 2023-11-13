#!/bin/bash
# Navigate to the script's directory
cd "$(dirname "$0")"

# Copy keylayouts to the user's Keyboard Layouts directory
cp key_layouts/*.keylayout ~/Library/Keyboard\ Layouts/
cp key_layouts/*.icns ~/Library/Keyboard\ Layouts/
