#!/bin/bash
cd "$(dirname "$0")"
for file in ~/.{vimrc,functions,aliases,bash_prompt,gitconfig,bash_profile}; do
	cp $file .	
done
unset file

cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings sublime/
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap sublime/
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings sublime/
