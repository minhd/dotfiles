# Minh Duc Nguyen's dotfiles

a fork from [paul irish's dotfiles](https://github.com/paulirish/dotfiles) 
[mathias's readme](https://github.com/mathiasbynens/dotfiles/) is awesome. go read it.

## install the necessary apps

My basic setup is captured in `install-deps.sh` which adds homebrew, z, nave, etc.

## overview of files

####  Automatic config
* `.ackrc` - for ack (better than grep)
* `.vimrc`, `.vim` - vim config, obv.

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

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

* `.inputrc` - config for bash readline


## Installation

```bash
git clone git@github.com:minhd/dotfiles.git && cd dotfiles && ./sync.sh
```
To update later on, just run the sync again.
