set nocompatible

" checks if pathogen is installed and run it if it is
if !empty(glob("/root/.vim/autoload/pathogen.vim"))
    execute pathogen#infect()
    let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
endif

" enables syntax highlighting by default.
if has("syntax")
    syntax on
endif

filetype plugin on

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
    source /etc/vim/vimrc.local
endif


let g:clang_library_path = '/usr/lib/llvm-3.8/lib'


" Custom settings
"-----------------------"
"----- INDENTATION -----"
"-----------------------"
" spaces instead of tab 
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

" auto indent
set autoindent
set smartindent

" searching
set ignorecase "ignore case when searching
set hlsearch "highlight search

" life-saving features
set history=100 "default is 20
set undolevels=200 "undo is life

" Scrolling-related
set scrolloff=3 "always show 3 lines ahead of current line while scrolling
set sidescrolloff=15
set sidescroll=1


"-----------------------"
"--------- MISC --------"
"-----------------------"
set backspace=indent,eol,start "deletes over autoindent and linebreak..
set ruler "shows which line/column the cursor is currently at
set wildmenu "autocomplete for command menu
set autowrite "write to file if modified by another program
set autoread "read to file if modified by another program
set enc=utf-8 "encoding
set title "terminal name => file name
set wrap! "no word wrap

" Copy-paste related
set pastetoggle=<F2>

" Lower priority when doing tab completition
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" No preview window
set completeopt-=preview

"-----------------------"
"------- MAPPING -------"
"-----------------------"
" move up through wrap text
noremap k gk
" move down through wrap text
noremap j gj

" autocomplete brackets and such (COMMENTED BECAUSE DELIMITMATE)
"inoremap ( ()<Esc>i
"inoremap " ""<Esc>i
"inoremap [ []<Esc>i
"inoremap { {}<Esc>i

" Prevent misclick <F1> instead of <ESC>
imap <F1> <ESC>
nmap <F1> <ESC>

" No arrows 
nnoremap <Left> :echoe "H = Left"<CR>
nnoremap <Right> :echoe "L = Right"<CR>
nnoremap <Up> :echoe "K = Up"<CR>
nnoremap <Down> :echoe "J = Down"<CR>

" Faster escape
inoremap jk <ESC>

" Typos
iabbrev mathin margin
iabbrev hmtl html
iabbrev htlm html
iabbrev </pre></code> </code></pre>
nmap :X :x
nmap :W :w
nmap :Q :q
nmap ; :

