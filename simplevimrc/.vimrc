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
" Show current command at bottom right
set showcmd
" Allow mouse usage
set mouse=a
" Show cursor position at bottom right
set ruler
" Ask if you wish to save instead of failing command
set confirm

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Eyecandy
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"highlight current row
set cursorline
" Enable Syntax highlighting
syntax enable
" Visual bell instead of beeping
set visualbell

" Display line numbers on the left
set number
" filetype specific highlighting and intentation
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight search
set hlsearch
set ignorecase
" Case sensitive if search contains capital letters
set smartcase
" Reset search with ctrl-l
nnoremap <C-L> :nohl<CR><C-L>

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

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
