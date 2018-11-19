set nocompatible
filetype off

set rtp+=~/.dotfiles/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs' " Bracket Pairing 
Plugin 'SirVer/ultisnips' " Snippets Engine 

call vundle#end()

filetype plugin indent on
let g:UltiSnipsExpandTrigger="<tab>"
let vim_markdown_preview_github=1

syntax on
set showcmd
set cursorline

set nocompatible
set modelines=0

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set autoindent
set undofile
set relativenumber

set hidden " Hidden buffers, with no error message

let mapleader=","


set wrap
set textwidth=79
set formatoptions=qrn1

" Making it easier to learn, unbinding all my arrow keys...
nnoremap <ESC> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <ESC> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap ; :
inoremap jj <ESC>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



map <C-n> :NERDTreeFocus<CR>
map <C-[> gt

" This closes nerdtree if it's the only window open...
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 


