#!/bin/zsh

# Run ls every time dir is changed + custom display for $HOME.

dir=$1
{ [ -z $dir ] && echo "       Home" | fl | lol && ls $HOME && \cd; } ||
{ ls $dir && \cd $dir; }
