#!/bin/bash
cd "$(dirname "$0")"
git pull
function doIt() {
  for file in {vimrc,functions,aliases,bash_prompt,gitconfig,bash_profile}; do
  	cp $file ~/	
  done
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
source ~/.bash_profile
