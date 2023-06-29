#!/bin/bash

# this whole process can be done in a better way but it works for now
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

DOT_FOLDER="nvim,alacritty" # TODO:get all folders in dotfiles
TARGET_DIR=$HOME/.config
TEST_DIR=$HOME/stow

for folder in $(echo $DOT_FOLDER | sed "s/,/ /g" ); do 
	echo "Checking for folder :: $folder"
	if [ ! -d $TEST_DIR/$folder ]; then
		echo "Creating folder :: $folder"
		mkdir "$HOME/stow/$folder"
		echo "Linking folder"
#		stow -t $TEST_DIR/$folder -nv $folder 
		stow -t $TEST_DIR/$folder -v $folder
		echo "=============================="
	else
		echo "This folder already exist :: $folder"
	fi 
done

echo "Linking done."

echo "Realoading shell..."
exec $SHELL -l 
