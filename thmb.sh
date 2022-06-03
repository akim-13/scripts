#!/bin/zsh

# Creates a thumbnail for a given image in the $wppath directory

png_file=$1
jpg_file=$(echo $png_file | sed 's/\.png/\.jpg/')
# Basename of the current directory
dir=${PWD##*/}

# Depends on imagemagick
convert -resize 10% -quality 70% $png_file ../thumbnails/$dir/$jpg_file

echo "[![Thumbnail](./thumbnails/$dir/$jpg_file)](./$dir/$png_file)" >> ../README.md
