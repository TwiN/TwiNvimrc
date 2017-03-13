# TwiNvimrc

This is simply the vimrc that I have built over time. It also contains features that I left there when I was still a beginner, such as a mapping that prevents the user from using the arrows.

__NOTE__: this is not really meant to be used for others; it's more of a note/backup for me, but if you happen to stumble upon it, well, that's that.

It also contains some personal shortcuts, such as:
 - F1 -> same as escape, I keep hitting F1 instead of ESC
 - F2 -> toggles paste mode on/off
 - and a few other typos..

## Plugins

The plugins that I use:
 - pathogen @ https://github.com/tpope/vim-pathogen
 - delimitmate @ https://github.com/Raimondi/delimitMate
 - supertab @ https://github.com/ervandew/supertab

### Extra

When I need to have C++ autocompletion for a specific machine, I use:
 - clang_complete @ https://github.com/Rip-Rip/clang_complete


## Installation
Type the following in the terminal for...

#### Install without clang_complete:
`make install`

#### Install with clang_complete:
`make` 
or 
`make full`


## Troubleshooting
### Loading libclang failed, completion won't be available.
**Possible causes**: 
- You haven't installed clang (`sudo apt-get install clang`) 
- The path set in */etc/vim/vimrc* isn't correct. To fix your path, find where *libclang.so* (or *libclang.so.1* in some cases) is and replace the content for the line `let g:clang_library_path = '...'` in */etc/vim/vimrc*


## Folder setup (does not include clang)

/root/.vim <br />
| <br />
|__autoload <br />
|....|__pathogen.vim <br />
|....|__delimitMate.vim <br />
| <br />
|__plugin <br />
|....|__delimitMate.vim <br />
|....|__supertab.vim <br />
