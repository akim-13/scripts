#!/bin/zsh

# Creates a thumbnail for a given image in the $wppath directory

file=$1
wppath=$HOME/pix/wallpapers
relpath=$(realpath --relative-to=.. $file)

convert -resize 10% $file $wppath/thumbnails/$relpath

echo "[![Thumbnail](./thumbnails/$relpath)](./$relpath)\n" >> $wppath/README.md
