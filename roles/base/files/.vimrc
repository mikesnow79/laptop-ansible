syntax on

filetype off
set laststatus=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'
Bundle 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'ryanoasis/vim-webdevicons'
call vundle#end() 

filetype plugin indent on

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set number
autocmd BufNewFile,BufRead *.kid set syntax=html
"set colorcolumn=100
set nocompatible
map <F2> :NERDTreeToggle<CR>

" Open NERDTree by default if no fils are specified
autocmd vimenter * if !argc() | NERDTree | endif
"let g:NERDTreeDirArrows=0
let NERDTreeIgnore = ['\.pyc$']

" Javascript
autocmd BufRead,BufNewFile *.js silent set ft=javascript syntax=javascript
autocmd BufRead,BufNewFile *.js silent set comments=sr:/*,mb:*,ex:*/,://
" autocmd BufRead,BufNewFile *.js silent set tabstop=2 shiftwidth=2 softtabstop=2

set noshowmode
let g:solarized_termcolors=256
"colorscheme solarized
colorscheme enzyme
set background=dark

" Added for vim-devicons
"set guifont=Inconsolata\ Nerd\ Font\ 14
let g:airline_powerline_fonts=1
let g:NERDTreeNodeDelimiter = "\u00a0"
