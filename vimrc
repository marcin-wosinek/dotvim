" enable pathogen
call pathogen#infect()

" turn on standard drupal stuff
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

syntax on

" Drupal *.module and *.install files.
augroup module
  autocmd BufRead,BufNewFile *.module set filetype=php
  autocmd BufRead,BufNewFile *.install set filetype=php
  autocmd BufRead,BufNewFile *.test set filetype=php
  autocmd BufRead,BufNewFile *.inc set filetype=php
  autocmd BufRead,BufNewFile *.profile set filetype=php
  autocmd BufRead,BufNewFile *.view set filetype=php
augroup END

" enabling drupal code sniffer
let g:syntastic_phpcs_conf=" --standard=Drupal --extensions=php,module,inc,install,test,profile,theme"

" for improving use of paste in putty
set pastetoggle=<F12>

" add best esc mapping ever
inoremap jk <esc>
inoremap kj <esc>
inoremap Jk <esc>
inoremap Kj <esc>
inoremap jK <esc>
inoremap kJ <esc>
inoremap JK <esc>
inoremap KJ <esc>

" change layout
colorscheme dante

" enabling nerdtree by default
autocmd VimEnter * NERDTree

" setting file window as a default
autocmd VimEnter * wincmd p
