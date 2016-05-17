# TwiNvimrc
TwiN's vimrc

This is simply the vimrc that I have built over time. It also contains features that I left there when I was still a beginner, such as a mapping that prevents the user from using the arrows.

NOTE: this is not really meant to be used for others; it's more of a note/backup for me, but if you happen to stumble upon it, well, that's that.

It also contains some personal shortcuts, such as:
 - jk  -> faster way to escape 
 - F1 -> same as escape, I keep hitting F1 instead of ESC
 - F2 -> toggles paste mode on/off
 - and a few other typos..

The plugins that I use:
 - pathogen @ https://github.com/tpope/vim-pathogen
 - delimitmate @ https://github.com/Raimondi/delimitMate
 - supertab @ https://github.com/ervandew/supertab
 - indentline @ https://github.com/Yggdroot/indentLine
 

My setup looks like this:

/root/.vim 
|
|__autoload
|....|__pathogen.vim
|
|__bundle
|....|__delimitmate //the whole git repo (git cloned it here)
|........|__autoload 
|........|....|__delimitMate.vim
|........|__doc
|........|....|__delimitMate.txt
|........|__plugin
|.............|__delimitMate.vim
|
|__plugin
|....|__delimitMate.vim (from bundle/delimitmate/plugin)
|....|__indentLine.vim
|....|__supertab.vim
.
