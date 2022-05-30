#!/bin/zsh

# Set random wallpaper.

dir=$HOME/pix/wallpapers/art
random_img=$(find $dir -maxdepth 1 -type f | shuf -n 1)

xwallpaper --center $random_img
