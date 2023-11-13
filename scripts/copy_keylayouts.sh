#!/bin/bash
# Navigate to the script's directory
cd "$(dirname "$0")"

# Copy keylayouts to the user's Keyboard Layouts directory
cp ../resources/*.keylayout ~/Library/Keyboard\ Layouts/
cp ../resources/*.icns ~/Library/Keyboard\ Layouts/
