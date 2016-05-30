"Use vundle to install plugins. Requires vim 7.4 or greater
"
"Install Vundle using git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
"Install some powerline patched fonts from 
"https://github.com/Lokaltog/powerline-fonts to display special characters
"Set iTerm2 non-ASCII font to Literation Mono Powerline font 
"The other one can be Andale Mono because it looks quite good
"
"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'tomasr/molokai'
Plugin 'mileszs/ack.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'Raimondi/delimitMate'

call vundle#end()
filetype plugin indent on

"Syntax and coloring
syntax on         "turn on syntax
colors molokai    "best colorscheme ever!
"set number        "line numbers
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
"set autoindent
set nowrap
set textwidth=0

"Map semicolon to colon to avoid the stupid shift press
nmap ; :

"NerdTree
nmap <silent> <C-D> :NERDTreeToggle<CR>

"Easy Motion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase=1
let g:EasyMotion_startofline = 0 
nmap s <Plug>(easymotion-overwin-f2)
nmap w <Plug>(easymotion-overwin-w) 
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

"TagList
nmap <silent> <C-C> :TlistToggle<CR>

"Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'
let g:airline#extensions#tabline#enabled = 1

"CtrlP
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

"Random Fixes
let g:ctrlp_map = '<c-p>'
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>
set noeb vb t_vb=               "Disable stupid annoying error sound
set backspace=indent,eol,start  "Fix backspace
set cmdheight=2                 "set command bar height
set lazyredraw                  "Fix redraw issue
"CM CM will show and hide line numbers
nmap <C-M><C-M> :set invnumber<CR>

"Support for mouse
set ttyfast
set mouse=a
set ttymouse=xterm2

"Save a file as root
noremap <leader>W :w !sudo tee % > /dev/null<CR>
