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
" set autochdir                               
set encoding=utf8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'javacomplete'
"Plugin 'davidhalter/jedi-vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'unblevable/quick-scope'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
"Plugin 'elixhummel/setcolors.vim'
Plugin 'davidhalter/jedi-vim.git'
Plugin 'ervandew/supertab'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'machakann/vim-highlightedyank'

call vundle#end()

" filetype specific highlighting and intentation
filetype plugin indent on

" Setup plugins
autocmd BufWritePost *.py call Flake8()
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif | wincmd p
map <C-n> :NERDTreeToggle<CR>
" Close the tab if NERDTree is the only window remaining in it.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               AUTOCOMPLETION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
  autocmd Filetype java setlocal omnifunc=javacomplete#Complete
endif
"helptags $HOME/.vim/doc
setlocal completefunc=javacomplete#CompleteParamsInfo
inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P>
inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Eyecandy
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"highlight current row
"set cursorline
" Enable Syntax highlighting
syntax on
" Visual bell instead of beeping
set visualbell
silent! colorscheme molokai

" Display line numbers on the left
set number
set confirm
" keep at least 5 lines above/below
set scrolloff=5                     
" keep at least 5 lines left/right
set sidescrolloff=5                 
" highlight text longer then 80 characters
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
set relativenumber
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['white',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
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
autocmd BufNewFile,BufRead *.tex,*.c,*.h,*.yml,*.yaml set tabstop=2
autocmd BufNewFile,BufRead *.tex,*.c,*.h,*.yml,*.yaml set softtabstop=2
autocmd BufNewFile,BufRead *.tex,*.c,*.h,*.yml,*.yaml set shiftwidth=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Controll
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:filetype_pl="prolog"
let mapleader = ","
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Undo and swap
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
" set directory=$HOME/.vim/swap//
" set backupdir=$HOME/.vim/backup//

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
noremap <up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <down>  ddp
"map <up>  <C-w>k
"map <down>  <C-w>j
map <left>  <C-w>h
map <right> <C-w>l

nnoremap <leader>i I\item <Esc>
nnoremap <Space> :
" Add ; at end of line
inoremap <leader>; <C-o>A;
nnoremap <leader>; A;<Esc>
inoremap <leader>m <Esc>
nnoremap <leader>m :w<CR>
nmap <leader>l :set list!<CR>
map <leader>h <C-w>h
map <leader>j <C-w>j
map <leader>k <C-w>k
map <leader>l <C-w>l
map <leader>H <C-w>H
map <leader>J <C-w>J
map <leader>K <C-w>K
map <leader>L <C-w>L
map <leader>s <C-w>s<C-w>j
map <leader>v <C-w>v<C-w>l
map <leader>B <C-w>s<C-w>j:bnext<CR>
map <leader>V <C-w>v<C-w>l:bnext<CR>
autocmd BufNewFile,BufRead *.py nnoremap <leader>s :w<CR> :!python3 %<CR>
autocmd BufNewFile,BufRead *.c nnoremap <leader>s :w<CR> :!clang %<CR>
autocmd BufNewFile,BufRead *.pl nnoremap <leader>s :w<CR> :!swipl %<CR>
nnoremap <leader>/ /\v\d+<CR>
nnoremap <leader>p :set spell! spelllang=sv<CR>
noremap <C-c> <esc>
inoremap <C-c> <esc>
" Split row at cursor
nnoremap <leader>c i<CR><Esc>
nnoremap <C-j> i<CR><Esc>
" Reset search with ctrl-l
nnoremap <C-L> :nohl<CR><C-L>
command! CD cd %:p:h
" Make Y act as C and D
nnoremap Y y$
" Search for current word in multiple files
nnoremap gr :grep <cword> *<CR>
"nnoremap Gr :grep <cword> %:p:h/*<CR>
nnoremap gR :grep '\b<cword>\b' *<CR>
"nnoremap GR :grep '\b<cword>\b' %:p:h/*<CR>
