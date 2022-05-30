#!/bin/bash

# Remove pesky files from $HOME.

# To Be Removed
tbr=(Downloads, .pki)

for file in ${tbr[*]}; do
    if [ -e "$HOME"/"$file" ]; then
        rm -rf "$HOME"/"$file"
        #echo "$file removed" 
    fi
done
