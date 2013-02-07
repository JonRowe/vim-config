set nocompatible

" Vundle config
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Include user's local vim config
if filereadable(expand("~/.vim/bundle/file"))
  source ~/.vim/bundle/file
endif

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" End Vundle Config

" My Config

" Numbering and Rulers
set number
set ruler
syntax on
" Status bar always shown?
set laststatus=2

" Set encoding
set encoding=utf-8

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Show (partial) command in the status line
set showcmd

" local config
set guioptions-=L
set guioptions-=r
set selectmode-=mouse
set iskeyword-=_

syntax enable
colorscheme solarized

let g:ackprg = 'ag --nogroup --nocolor --column'
