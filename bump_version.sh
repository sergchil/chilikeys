#!/bin/bash

# Read current version from VERSION file
current_version=$(cat VERSION)

# Function to increment version
bump_version() {
    local version="$1"
    local type="$2"
    local IFS="."
    local -a parts=(${version})

    case "$type" in
        "major")
            parts[0]=$((parts[0] + 1))
            parts[1]=0
            parts[2]=0
            ;;
        "minor")
            parts[1]=$((parts[1] + 1))
            parts[2]=0
            ;;
        "patch")
            parts[2]=$((parts[2] + 1))
            ;;
        *)
            echo "Invalid bump type: $type"
            return 1
            ;;
    esac

    echo "${parts[0]}.${parts[1]}.${parts[2]}"
}

# Calculate new versions
new_patch_version=$(bump_version "$current_version" "patch")
new_minor_version=$(bump_version "$current_version" "minor")
new_major_version=$(bump_version "$current_version" "major")

# Menu items
menu_items=(
    "patch (${current_version} → ${new_patch_version})"
    "minor (${current_version} → ${new_minor_version})"
    "major (${current_version} → ${new_major_version})"
    "exit"
)

# Function to draw menu
draw_menu() {
    local selected=$1
    clear
    echo "Current version: $current_version"
    echo "Use ↑/↓ arrows to navigate, Enter to select"
    echo
    
    for i in "${!menu_items[@]}"; do
        if [ $i -eq $selected ]; then
            echo "→ ${menu_items[$i]} ←"
        else
            echo "  ${menu_items[$i]}"
        fi
    done
}

# Initialize selection
selected=0

# Hide cursor and configure terminal
tput civis
stty -echo

# Cleanup function
cleanup() {
    tput cnorm
    stty echo
}
trap cleanup EXIT

# Main menu loop
while true; do
    draw_menu $selected

    # Read a key
    IFS= read -r -n1 key

    case "$key" in
        $'\x1b')  # ESC sequence
            read -r -n2 rest
            case "$rest" in
                '[A')  # Up arrow
                    if [ $selected -gt 0 ]; then
                        selected=$((selected - 1))
                    fi
                    ;;
                '[B')  # Down arrow
                    if [ $selected -lt $((${#menu_items[@]} - 1)) ]; then
                        selected=$((selected + 1))
                    fi
                    ;;
            esac
            ;;
        "")  # Enter key
            clear
            stty echo
            tput cnorm

            case $selected in
                0) new_version="$new_patch_version" ;;
                1) new_version="$new_minor_version" ;;
                2) new_version="$new_major_version" ;;
                3) echo "Exiting..."; exit 0 ;;
            esac

            read -p "Confirm version bump to $new_version? [y/N] " confirm
            if [[ ! "$confirm" =~ ^[Yy] ]]; then
                echo "Cancelled"
                exit 0
            fi

            # Update VERSION file
            echo "$new_version" > VERSION

            # Update the cask file with the new version
            sed -i "" "s/version \".*\"/version \"$new_version\"/g" Casks/chilikeys.rb

            # Commit the changes
            git add Casks/chilikeys.rb VERSION
            git commit -m "Update cask version to $new_version"

            # Add the new tag
            git tag "v$new_version"

            # Push the tags
            git push origin --tags

            echo "Version bumped to $new_version and tag v$new_version added and pushed successfully."
            exit 0
            ;;
    esac
done
