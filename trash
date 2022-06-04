#!/bin/bash

# Move files to trash instead of deleting them.

# Allows to input all of the files separated by spaces
files=("$@")
timestamp=$(date +'%y.%m.%d-%T')
trash="$HOME/tmp/trash"

for file in "${files[@]}"; do
    # If the file exists
    base_file=$(basename "$file")   
    {   [ -e "$trash"/"$base_file" ] &&
        dup_file="$base_file"[dup-"$timestamp"] &&
        mv "$file" "$trash"/"$dup_file" &&
        echo "Moved \"$base_file\" to trash as \"$dup_file\""; 
    } ||
    { 
        mv "$file" "$trash"/"$base_file" &&
        echo "Moved \"$base_file\" to trash"; 
    }
done
