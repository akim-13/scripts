#!/bin/zsh

# Run ls every time dir is changed + custom display for $HOME.

dir=$1
# -z checks if a string is empty, i.e. cd with no arguments.
{ [ -z $dir ] && echo "       Home" | fl | lol && ls $HOME && \cd; } ||
{ \cd $dir && ls $PWD; }
