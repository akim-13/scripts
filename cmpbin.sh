#!/bin/zsh

# Make a script executable.

script=$(echo "$1" | sed 's/\.sh//')

chmod 755 "$script".sh &&
ln -s $HOME/rps/bin/"$script".sh $HOME/.local/bin/"$script" && 
source $XDG_CONFIG_HOME/zsh/.zshrc
