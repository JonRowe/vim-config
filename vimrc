set nocompatible
setlocal spell spelllang=en_gb

" Vundle config
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Include user's local vim config
if filereadable(expand("~/.vim/bundle/file"))
  source ~/.vim/bundle/file
endif

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

" powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

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
set tabpagemax=100

syntax enable
colorscheme solarized

" ruby
let ruby_space_errors = 1
let ruby_no_expensive = 1

let g:ackprg = 'ag --nogroup --nocolor --column'

" Key remaps
" ctrl t opens tests
map <C-T> :OpenVertical(alternate#FindAlternate())<CR>
