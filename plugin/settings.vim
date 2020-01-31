set encoding=utf-8
set mouse=a

set viewoptions-=options
" set nolazyredraw
set regexpengine=1

set nowrap
set nonumber
set norelativenumber
set expandtab                         " Always use spaces instead of tabs
filetype plugin indent on
set cindent
set smartindent
set ignorecase
set smarttab
set tabstop=2
syntax sync minlines=256
set textwidth=100
set shiftwidth=2
set backspace=indent,eol,start
set whichwrap=b,<,>,[,],l,h

set clipboard=unnamedplus
set autoread
set hidden
set wildmenu
set breakindent

" set notimeout
" set ttimeout

" set ruler
" set cursorline
" set cursorcolumn

set hlsearch
set incsearch

" Enable hotkeys for Russian layout
" set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕHГШЩЗХЪФЫВАПnОЛДЖЭЯЧСМИТЬБЮ;`qwertyuinp[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set noswapfile
"set updatecount=80                    " update swapfiles every 80 chars
set updatetime=200

if has('folding')
  if has('windows')
    set fillchars=vert:c              " BOX DRAWINGS HEAVY VERTICAL (U+2503, UTF-8: E2 94 83)
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

if has('nvim')
  tmap <C-o> <C-\><C-n>
endif

hi MatchParen cterm=underline ctermbg=none

command! -bang -nargs=? -complete=dir GFiles
      \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --fixed-strings --smart-case --hidden --follow --glob "!.git/*" '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)

autocmd! bufwritepost $MYVIMRC source $MYVIMRC
