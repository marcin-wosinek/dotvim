" enable pathogen
call pathogen#infect()

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set number

set number

augroup module
  " js folding
  autocmd BufRead,BufNewFile *.js set foldmethod=syntax
  autocmd BufRead,BufNewFile .jshintrc set filetype=json
  autocmd BufRead,BufNewFile *.styl set filetype=stylus
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

" Remove spaces at the end of the line
autocmd BufWritePre *{.html\|.module\|.install\|.test\|.inc\|.view\|.ftl\|.txt\|.css\|.ts\|.json\|.js\|.php} :%s/\s\+$//e

" Set layout
syntax enable
set background=light
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
    let g:syntastic_mode_map['mode'] = 'active'
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

" Dont use sandbox
let g:localvimrc_sandbox=0

" Surpress ex mode
map Q <Nop>

" Powerline fancy
let g:Powerline_symbols = 'fancy.vimrc.vimrc'
set term=xterm-256color
set termencoding=utf-8

" Auto-complete for css
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS

let g:vim_json_syntax_conceal = 0

set spell spelllang=en_us

let g:syntastic_javascript_checkers = ['eslint']
