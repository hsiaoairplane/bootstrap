set number
set cursorline
set ts=2
set sw=2
set ruler
set mouse=nv
set hlsearch
syntax on
set t_Co=256


filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tomasr/molokai'
call vundle#end()
filetype plugin indent on

"Color scheme"
colorscheme molokai
