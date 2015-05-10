# Minh Duc Nguyen's dotfiles

a fork from [paul irish's dotfiles](https://github.com/paulirish/dotfiles) 
[mathias's readme](https://github.com/mathiasbynens/dotfiles/) is awesome. go read it.

## install the necessary apps

My basic setup is captured in `install-deps.sh` which adds homebrew, z, nave, etc.

## overview of files

####  Automatic config
* `.vimrc`, `.vim` - vim config, obv. comes with a million plugin so be warned

#### shell environment
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`

#### manual run
* `install-deps.sh` - random apps i need installed
* `.osx` - run on a fresh osx machine
* `.brew` - homebrew initialization
* `sync.sh` - manually sync what is new from the stuffs
* `replace.sh` - replace what you have changed in your environment to the checkout so it can be easily commited to github

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`
* `.inputrc` - config for bash readline


## Installation

```bash
git clone git@github.com:minhd/dotfiles.git && cd dotfiles && ./sync.sh
git clone https://github.com/minhd/dotfiles.git && cd dotfiles && ./sync.sh
```
to install Vundle and use vim the way it's meant to use
```bash
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```
To update later on, just run the sync again. To update, run replace
