" enable pathogen
call pathogen#infect()

" turn on standard drupal stuff
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set number

set number

" Drupal *.module and *.install files.
augroup module
  autocmd BufRead,BufNewFile *.module set filetype=php
  autocmd BufRead,BufNewFile *.install set filetype=php
  autocmd BufRead,BufNewFile *.test set filetype=php
  autocmd BufRead,BufNewFile *.inc set filetype=php
  autocmd BufRead,BufNewFile *.profile set filetype=php
  autocmd BufRead,BufNewFile *.view set filetype=php
  autocmd BufRead,BufNewFile *.ftl set filetype=html.ftl
augroup END

" for improving use of paste in putty
set pastetoggle=<F10>

" add best esc mapping ever
inoremap jk <esc>
inoremap kj <esc>
inoremap Jk <esc>
inoremap Kj <esc>
inoremap jK <esc>
inoremap kJ <esc>
inoremap JK <esc>
inoremap KJ <esc>

" Remove spaces at the end of the file
autocmd BufWritePre *{.html\|.module\|.install\|.test\|.inc\|.view\|.ftl\|.txt\|.css\|.js\|.php} :%s/\s\+$//e

" Set layout
syntax enable
set background=dark
colorscheme solarized

" setting file window as a default
autocmd VimEnter * wincmd p

" maping for gundo
nnoremap <tab>g :GundoToggle<CR>

" maping for NERDTree
nnoremap <tab>n :NERDTreeT<CR>
nnoremap <tab> :NERDTreeT<CR>
nmap gn :NERDTreeFind<CR>

" sudo write :W
command W w !sudo tee % > /dev/null

" custom syntastic configuration
"   turn it on in passive mode
"   maps shortcut for checking
if !exists("g:syntastic_mode_map")
    let g:syntastic_mode_map = {}
endif

if !has_key(g:syntastic_mode_map, "mode")
    let g:syntastic_mode_map['mode'] = 'passive'
endif

nnoremap <C-x> :SyntasticCheck<CR>

" setting search highlight
set hlsearch

" Keep history when changing buffers
set hidden

" Intent fix
filetype indent on

" Don't ask, just load .lvimrc
let g:localvimrc_ask=0

" Surpress ex mode
map Q <Nop>

" Powerline fancy
let g:Powerline_symbols = 'fancy.vimrc.vimrc'
set term=xterm-256color
set termencoding=utf-8
