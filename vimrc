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

syntax on

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

autocmd BufWritePre * :%s/\s\+$//e

" change layout
colorscheme wombat

" setting file window as a default
autocmd VimEnter * wincmd p

" maping for gundo
nnoremap <tab>g :GundoToggle<CR>

" maping for gundo
nnoremap <tab>n :NERDTreeT<CR>
nnoremap <tab> :NERDTreeT<CR>

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
