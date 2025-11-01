#!/bin/bash

# Directory where the date-named folders are located
# Change this to the path where your folders are stored
FOLDER_PATH="/media/pi/M21/goes19/fd/fc/"

# Check if the directory exists
if [ ! -d "$FOLDER_PATH" ]; then
  echo "Directory $FOLDER_PATH does not exist!"
  exit 1
fi

# Current date in seconds since epoch
CURRENT_DATE=$(date +%s)

# Loop through all folders in the specified directory
for folder in "$FOLDER_PATH"/*; do
  # Check if it's a directory
  if [ -d "$folder" ]; then
    # Extract folder name (basename)
    folder_name=$(basename "$folder")
    
    # Try to parse the folder name as a date (assuming format like YYYY-MM-DD)
    # Convert folder name to seconds since epoch
    folder_date=$(date -d "$folder_name" +%s 2>/dev/null)
    
    # Check if date conversion was successful
    if [ $? -eq 0 ]; then
      # Calculate the age of the folder in seconds (1 month ≈ 2592000 seconds)
      age=$((CURRENT_DATE - folder_date))
      one_month=2592000
      
      # If folder is older than 1 month, delete it
      if [ $age -gt $one_month ]; then
        echo "Deleting folder: $folder"
        rm -rf "$folder"
      fi
    else
      echo "Skipping $folder: Not a valid date format"
    fi
  fi
done

echo "Cleanup complete!"
