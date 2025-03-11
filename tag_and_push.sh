#!/bin/bash

# Get the latest tag
latest_tag=$(git describe --tags --abbrev=0)

# Print the latest tag
echo "Latest tag: $latest_tag"

# Ask the user for the new tag
read -p "Enter the new tag name: " new_tag

# Extract version number without 'v' prefix
version_number=$(echo "$new_tag" | sed 's/^v//')

# Update the cask file with the new version
sed -i "" "s/version \".*\"/version \"$version_number\"/g" Casks/chilikeys.rb

# Commit the changes to the cask file
git add Casks/chilikeys.rb
git commit -m "Update cask version to $version_number"

# Add the new tag
git tag "$new_tag"

# Push the tags
git push origin --tags

echo "Tag $new_tag added and pushed successfully."
