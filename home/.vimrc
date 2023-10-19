call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'hashivim/vim-terraform'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'othree/html5.vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'tpope/vim-dispatch', {'for': 'clojure'}
Plug 'tpope/vim-salve', {'for': 'clojure'}
Plug 'guns/vim-sexp', {'for': 'clojure'}
Plug 'venantius/vim-cljfmt', {'for': 'clojure'}
call plug#end()

filetype plugin on

set guifont=Menlo:h18
set mouse=a
set ignorecase
set smartcase
set hlsearch
set incsearch
set noerrorbells
set encoding=utf8
set ffs=unix,dos,mac
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ruler
set number
"set colorcolumn=120

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:pymode_options_max_line_length = 119
