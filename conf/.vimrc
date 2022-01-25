"Marc St-Pierre's Learning .vimrc file
" Last modified 211119-2050

" Colours {{{
syntax on                       " Enable syntax highlighting
set background=dark             " Enable lighter colours on dark background
" }}}

" Spaces / Tabs {{{
filetype plugin indent on       " Enable file type based indentation
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
"set clipboard=unnamedplus       " Set clipboard to copy-paste from outside VIM
set tags=tags;                  " Allow tag file recursively
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
packloadall                     " Load all plugins in Pack folder
silent! helptags ALL            " Load all help for plugins silently
call plug#begin()
    Plug 'junegunn/vim-plug'
    Plug 'tpope/vim-vinegar'
    Plug 'tpope/vim-unimpaired'
    Plug 'easymotion/vim-easymotion'
    "Plug 'tpope/vim-surround'
    "Plug 'tpope/vim-sensible'
    "Plug 'tpope/vim-fugitive'
    "Plug 'vim-airline/vim-airline'
    "Plug 'ctrlpvim/ctrlp.vim'
    "Plug 'mileszs/ack.vim'
    let g:plug_timeout = 300        " Increase vim-plug timeout for YouCompleteMe.
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
    Plug 'sjl/gundo.vim'
    "Plug 'frazrepo/vim-rainbow'
    "let g:rainbow_active = 1        " Enable rainbow brackets
call plug#end()

" }}}

" Window Movement {{{
    noremap <c-h> <c-w><c-h>
    noremap <c-j> <c-w><c-j>
    noremap <c-k> <c-w><c-k>
    noremap <c-l> <c-w><c-l>
" }}}

" Automatically add closing quotes / braces when new ones are open {{{
    inoremap ' ''<esc>i
    inoremap ( ()<esc>i
    inoremap { {}<esc>i
    inoremap [ []<esc>i
    inoremap < <><esc>i
" }}}

