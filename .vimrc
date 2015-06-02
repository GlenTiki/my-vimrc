set nocompatible 
set tabstop=2
set shiftwidth=2
set expandtab
set wildmenu
set wildmode=longest,list,full
set hidden
set history=1000
set ignorecase
set smartcase
set title
set ruler
set backspace=indent,eol,start
set hlsearch
set incsearch
set backupdir=~/.vim-tmp
set directory=~/.vim-tmp
set t_Co=256

syntax on
filetype on
filetype plugin on
filetype indent on
runtime macros/machit.vim

function! GitCommit ()
  execute 'write'
  let message = input('Enter commit message: ')
  execute '!git add ' . bufname('%') . ' && git commit -m ''' . message . ''';'
endfunction
  
imap <F7> <Esc>:call GitCommit()<CR>
map <F7> <Esc>:call GitCommit()<CR>
