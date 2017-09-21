set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'michalbachowski/vim-wombat256mod'
Plugin 'valloric/youcompleteme'

call vundle#end()

" Map Leader
let mapleader = ","
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" PowerLine
set laststatus=2

" Mouse
set mouse=a

" Backspace
set bs=2

" Search, remove hl
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Show whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Color Scheme
set t_Co=256
color wombat256mod
filetype off
filetype plugin indent on
syntax on

" Line numbers and length
set number
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Misc

set wildmenu	    " Visual autocomplete
set lazyredraw

" Search

set incsearch
set hlsearch

" Remap

nnoremap j gj
nnoremap k gk

" Backup

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
