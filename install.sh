#!/bin/bash
# this whole process can be done in a better way but it works for now
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

TARGET_DIR=$HOME/.config
TEST_DIR=$HOME/stow

git submodule init
git submodule update

folders=()

folder_list=$(ls -d */ 2>/dev/null)

for folder in $folder_list; do
  folder=${folder%/}
  folders+=("$folder")
done

for folder in "${folders[@]}"; do
	echo "Checking for folder :: $folder"
	if [ ! -d $TEST_DIR/$folder ]; then
		echo "Creating folder :: $folder"
		mkdir "$TARGET_DIR/$folder"
		echo "Linking folder"
		stow -t $TARGET_DIR/$folder -nv $folder 
		stow -t $TARGET_DIR/$folder -v $folder
		echo "=============================="
	else
		echo "This folder already exist :: $folder"
	fi 
done

echo "Linking done."

echo "Realoading shell..."
exec $SHELL -l 

