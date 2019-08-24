set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'dense-analysis/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Encoding
set encoding=utf-8

" Theme
syntax enable
set background=dark
colorscheme solarized

" Line numbering
set nu

" Syntax checking
let python_highlight_all=1
syntax on

" Lightline config
set noshowmode
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" Enable folding
set foldmethod=indent
set foldlevel=99

" Code indentations
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" Python flag bad whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" YouCompleteMe config
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


