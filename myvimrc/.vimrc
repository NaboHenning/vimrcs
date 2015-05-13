""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               VIMRC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               GENERAL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
" Allows reusing a window without saving first
set hidden
" Command-line completion
set wildmenu
" Show current command
set showcmd
" Allow mouse usage
set mouse=a
set ruler
" Always show bottom bar
set laststatus=2
" Ask if you wish to save instead of failing command
set confirm
" automatically cd into the directory that the file is in (this will break plugins if activated!!!)
set autochdir                               
set encoding=utf8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Eyecandy
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"highlight current row
set cursorline
" Enable Syntax highlighting
syntax enable
" Visual bell instead of beeping
set visualbell
" filetype specific highlighting and intentation
filetype plugin indent on

" Display line numbers on the left
set number
set confirm
" keep at least 5 lines above/below
set scrolloff=5                     
" keep at least 5 lines left/right
set sidescrolloff=5                 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight search
set hlsearch
set ignorecase
set smartcase
" partial search while searching
set incsearch
set wrapscan


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Width of tab character. Unused if expandtab is set
set tabstop=4
" Legth of tabs created with <<>>
set shiftwidth=4
" Number of spaces to use instead of tab if expandtab is set
set softtabstop=4
" Use spaces instead of tabs
set expandtab
set autoindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Controll
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=1000
" save undo's after file closes
set undofile                        
" where to save undo histories
set undodir=$HOME/.vim/undo         
" how many undos
set undolevels=1000                 
" number of lines to save for undo
set undoreload=10000                

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Allow simple commant-line operations with capital letters
command! WQ wq
command! Wq wq
command! Wqa wqa
command! W w
command! Q q

nnoremap <leader><Tab>   :bnext<CR>
nnoremap <leader><S-Tab> :bprevious<CR>

" Toggle off arrow keys in command-mode
map <up>    <nop>
map <down>  <nop>
map <left>  <nop>
map <right> <nop>

nnoremap <leader>i I\item <Esc>
nnoremap <Space> :
" Add ; at end of line
inoremap <leader>; <C-o>A;
inoremap <leader>m <Esc>
nmap <leader>l :set list!<CR>
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l
map <leader>H <C-w>H
map <leader>J <C-w>J
map <leader>K <C-w>K
map <leader>L <C-w>L
map <leader>b <C-w>s
map <leader>v <C-w>v
nnoremap <leader>/ /\v\d+<CR>
" Split row at cursor
nnoremap <leader>c i<CR><Esc>
" Reset search with ctrl-l
nnoremap <C-L> :nohl<CR><C-L>
