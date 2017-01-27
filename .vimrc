set nocompatible              " be iMproved, required
set guifont=Monaco:h14
filetype off                  " required
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab

set hidden
set noswapfile

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
colorscheme codeschool
let g:syntastic_javascript_checkers = ['standard']

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
