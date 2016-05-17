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
 

My setup looks like this: <br />

/root/.vim <br />
| <br />
|__autoload <br />
|....|__pathogen.vim <br />
| <br />
|__bundle <br />
|....|__delimitmate //the whole git repo (git cloned it here) <br />
|........|__autoload <br />
|........|....|__delimitMate.vim <br />
|........|__doc <br />
|........|....|__delimitMate.txt <br />
|........|__plugin <br />
|.............|__delimitMate.vim <br />
| <br />
|__plugin <br />
|....|__delimitMate.vim (from bundle/delimitmate/plugin) <br />
|....|__indentLine.vim <br />
|....|__supertab.vim <br />
