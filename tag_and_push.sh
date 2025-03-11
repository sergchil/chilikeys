#!/bin/bash

# Get the latest tag
latest_tag=$(git describe --tags --abbrev=0)

# Print the latest tag
echo "Latest tag: $latest_tag"

# Ask the user for the new tag
read -p "Enter the new tag name: " new_tag

# Add the new tag
git tag "$new_tag"

# Push the tags
git push origin --tags

echo "Tag $new_tag added and pushed successfully."
