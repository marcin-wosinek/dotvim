set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'marijnh/tern_for_vim'
Bundle 'altercation/vim-colors-solarized'

" add esc mapping
inoremap jk <esc>
inoremap kj <esc>
inoremap Jk <esc>
inoremap Kj <esc>
inoremap jK <esc>
inoremap kJ <esc>
inoremap JK <esc>
inoremap KJ <esc>

" Set layout
syntax enable
set background=dark
colorscheme solarized
