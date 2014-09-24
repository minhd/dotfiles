"Use vundle to install plugins. Requires vim 7.3 or greater
"
"Install Vundle using git clone 
"https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
"Install some powerline patched fonts from 
"https://github.com/Lokaltog/powerline-fonts to display special characters
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'taglist.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomasr/molokai'

call vundle#end()
filetype plugin indent on

"Syntax and coloring
syntax on         "turn on syntax
colors molokai    "best colorscheme ever!
set number        "line numbers
set incsearch     "search as you type
set hlsearch      "highlight search
set cursorline    "display current line

set wildmenu      "display possible menu
set showtabline=2 "always show tab line
set history=10000 "keep alot of history

set ignorecase smartcase  "case insensitive search

"Files, backup, swap
set nobackup
set nowb
set noswapfile

"Tabs and spaces
set showmatch
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set nowrap
set textwidth=0

"NerdTree
nmap <silent> <C-D> :NERDTreeToggle<CR>

"Easy Motion
map <Leader> <Plug>(easymotion-prefix):

"TagList
nmap <silent> <C-C> :TlistToggle<CR>

"Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'molokai'

"CtrlP
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_show_hidden = 1

"Random Fixes
let g:ctrlp_map = '<c-p>'
set noeb vb t_vb=               "Disable stupid annoying error sound
set backspace=indent,eol,start  "Fix backspace
set cmdheight=2                 "set command bar height
set lazyredraw                  "Fix redraw issue
"CM CM will show and hide line numbers
nmap <C-M><C-M> :set invnumber<CR>
