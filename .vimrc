" Marc St-Pierre's trial vimrc file
" Last modified 210929-1807

" Colours {{{
syntax on                       " Enable syntax highlighting
set background=dark             " Enable lighter colours on dark background
" }}}

" Spaces / Tabs {{{
filetype plugin indent on       " Enable file tpye based indentation
set autoindent                  " Respect Indentation when stating a new line
set copyindent                  " Copy Indentation when stating a new line
set expandtab                   " Expand tabs to spaces - Essential in Python programming
set tabstop=4                   " Number of spaces a tab is counted for
set softtabstop=4               " Number of spaces a tab is counted for in editing
set shiftwidth=4                " Number of spaces to use for autoindent
set foldmethod=indent           " For folding / hiding parts of your code
set clipboard=unnamed           " Allow VIM to use unnamed (*) register for copy-paste
" }}}

" UI Configurations {{{
set number                      " Enable line numbers
set showcmd                     " Show command line on bottom
set showmatch                   " Show matching brace
set wildmenu                    " Visual autocomplete for command line
set laststatus=2                " Always show a status bar
set backspace=2                 " Fix backspace behaviour on most terminals
set clipboard=unnamedplus       " Set clipboard to copy-paste from outside VIM
" }}}

" Search Configurations {{{
set hlsearch                    " Highlight search terms
set incsearch                   " Search as characters are entered
set ignorecase                  " Ignore case when searching
" }}}

" Undo {{{
" Set up a persistent Undo across all files
set undofile
if !isdirectory(expand("$HOME/.vim/undodir"))
    call mkdir(expand("$HOME/.vim/undodir"), "p")
endif
set undodir="$HOME/.vim/undodir"
" }}}

" Plugin Support {{{
"packloadall                     " Load all plugins
silent! helptags ALL            " Load all help for plugins silently
call plug#begin()
    Plug 'junegunn/vim-plug'
    Plug 'tpope/vim-vinegar'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'mileszs/ack.vim'
    Plug 'tpope/vim-unimpaired'
    Plug 'easymotion/vim-easymotion'
call plug#end()
" }}}

" Window Movement {{{
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>
" }}}
