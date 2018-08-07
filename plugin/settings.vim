set encoding=utf-8
set mouse=a
set termguicolors

set viewoptions-=options
set lazyredraw
set ttyfast

set nowrap
set number
set relativenumber
set expandtab                         " Always use spaces instead of tabs
filetype plugin indent on
set cindent
set smartindent
set ignorecase
set smarttab
set tabstop=2
set textwidth=250
set shiftwidth=2
set lines=350
set columns=350
set backspace=indent,eol,start
set whichwrap=b,<,>,[,],l,h

set clipboard=unnamed
set autoread
set hidden
set wildmenu
set breakindent

set ruler
set cursorline

set hlsearch
set incsearch

" Enable hotkeys for Russian layout
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<> 

set noswapfile
"set updatecount=80                    " update swapfiles every 80 chars
"set updatetime=2000

" FOLDING
if has('folding')
  if has('windows')
    set fillchars=vert:┃              " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
  endif
  set foldmethod=indent               " not as cool as syntax, but faster
  set foldlevelstart=99               " start unfolded
endif

if has('linebreak')
  let &showbreak='  ↳ '                 " DOWNWARDS ARROW WITH TIP RIGHTWARDS (U+21B3, UTF-8: E2 86 B3)
endif

if has('windows')
  set splitbelow                      " open horizontal splits below current window
endif

if has('vertsplit')
  set splitright                      " open vertical splits to the right of the current window
endif

if has('showcmd')
  set showcmd
endif

autocmd! bufwritepost $MYVIMRC source $MYVIMRC
