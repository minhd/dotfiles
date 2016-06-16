#!/bin/bash
cd "$(dirname "$0")"
for file in ~/.{vimrc,functions,aliases,bash_prompt,gitconfig,bash_profile}; do
	cp $file .	
done
unset file
