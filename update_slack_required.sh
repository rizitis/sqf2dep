#!/bin/bash

# Save the original directory
original_dir=$(pwd)

# Find subdirectories with a slack-required file
for folder in */*/; do
  if [ -f "$folder/slack-required" ]; then
    echo "Entering directory: $folder"
    cd "$folder"
    
    # Get the basename of the current directory
    dir_name="$(basename "$(pwd)")"
    
    # Perform the sed operation
    sed -i "s/$dir_name//g" slack-required
    
    # Return to the original directory
    cd "$original_dir"
  fi
done

