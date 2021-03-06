" Sets up our plugin manager, Vundle.
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'arcticicestudio/nord-vim'

call vundle#end()            " required
filetype plugin indent on    " required

" PEP 8 Standards for python dev
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" Addition formating (other langauges)
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Enables UTF-8 Support
set encoding=utf-8

" Enable clipboard sharing
set clipboard=unnamed

" Settings for syntax highlighting
syntax on
colorscheme nord

" Line Numbering
set nu

" Spellchecking (not enabled)
"set spell spelllang=en_us

" Flags bad whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Handles splitting of the screen
set splitbelow
set splitright
" Hotkeys for moving splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enables code folding
set foldmethod=indent
set foldlevel=99
" Fold with spacebar
nnoremap <space> za

