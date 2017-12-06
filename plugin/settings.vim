set encoding=utf-8

set number
set relativenumber
set expandtab                         " Always use spaces instead of tabs
set tabstop=2
set shiftwidth=2
set lines=350
set columns=350
set backspace=indent,eol,start
set whichwrap=b,<,>,[,],l,h

set clipboard=unnamed
set autoread
set hidden
set showcmd
set wildmenu
set autoindent
set smartindent
set breakindent

set ruler
set cursorline

set hlsearch
set incsearch

set noswapfile
set updatecount=80                    " update swapfiles every 80 chars
set updatetime=2000

" FOLDING
set foldenable
"set foldmethod=syntax
set foldmethod=indent
"set foldmethod=manual
set foldcolumn=3
autocmd BufWinLeave "." mkview
autocmd BufWinEnter "." silent loadview

if has('linebreak')
  let &showbreak='  ↳ '                 " DOWNWARDS ARROW WITH TIP RIGHTWARDS (U+21B3, UTF-8: E2 86 B3)
endif

if has('windows')
  set splitbelow                      " open horizontal splits below current window
endif

if has('vertsplit')
  set splitright                      " open vertical splits to the right of the current window
endif

autocmd! bufwritepost $MYVIMRC source $MYVIMRC
