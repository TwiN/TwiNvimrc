set nocompatible

" checks if pathogen is installed and run it if it is
if !empty(glob("/root/.vim/autoload/pathogen.vim"))
    execute pathogen#infect()
endif

" Patch for indentLine.vim
<<<<<<< HEAD
"au BufRead,BufEnter,BufNewFile * IndentLinesReset
=======
au BufRead,BufEnter,BufNewFile * IndentLinesReset
>>>>>>> 35e2ca998f0cec5d2ea6c2781118b9fcd6a1e522

" enables syntax highlighting by default.
if has("syntax")
    syntax on
endif

filetype plugin on

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
    source /etc/vim/vimrc.local
endif

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
nnoremap <Left> :echoe "Left = H"<CR>
nnoremap <Right> :echoe "Right = L"<CR>
nnoremap <Up> :echoe "Up = K"<CR>
nnoremap <Down> :echoe "Down = J"<CR>

" Faster escape
inoremap jk <ESC>

" Saving in insert mode (this is troublesome for CSS..)
"inoremap :w <ESC>:w<CR>  

" Typos
iabbrev mathin margin
iabbrev hmtl html
iabbrev htlm html
iabbrev </pre></code> </code></pre>
nmap :X :x
nmap :W :w
nmap :Q :q
nmap ; :

