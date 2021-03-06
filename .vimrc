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
Plugin 'taglist.vim'
Plugin 'tpope/vim-vinegar'

call vundle#end()
filetype plugin indent on

"Syntax and coloring
syntax on         "turn on syntax
colors molokai    "best colorscheme ever!

set background=dark

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
set shiftwidth=2 "set autoindent
set nowrap
set textwidth=0
set wrap
set linebreak
set nolist

"Map semicolon to colon to avoid the stupid shift press
nmap ; :
"Map leader to ,
let mapleader = ","

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

nmap <Leader>w :w<cr>
nmap <Leader>q :qa<cr>

"Map ,space to nohl
nnoremap <leader><space> :noh<cr>

set pastetoggle=<F2>

imap <C-c> <CR><Esc>O


"NerdTree
nmap <silent> <C-D> :NERDTreeToggle<CR>
let NERDTreeHijackNetrw = 0

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
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly"
set laststatus=2
let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='bubblegum'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


"CtrlP
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_match_window = "top,order:ttb,min:1,max:30,results:30"
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
nmap <C-r> :CtrlPBufTag<cr>
nmap <C-e> :CtrlPMRUFiles<cr>
"Random Fixes
let g:ctrlp_map = '<c-p>'
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>
set noeb vb t_vb=               "Disable stupid annoying error sound
set backspace=indent,eol,start  "Fix backspace
set cmdheight=2                 "set command bar height
set lazyredraw                  "Fix redraw issue

"leader l will show and hide line numbers
nmap <leader>l :set invnumber<CR>

"Support for mouse
set ttyfast
set mouse=a
set ttymouse=xterm2

"leaderW Save a file as root
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" CtrlN to toggle relative number
nnoremap <C-n> :set relativenumber<CR>
