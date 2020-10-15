set encoding=utf8
set mouse=a

set viewoptions-=options
set regexpengine=1
" set nolazyredraw

set number
set relativenumber

set nowrap
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

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" set notimeout
" set ttimeout

set hlsearch
set incsearch

"set updatecount=80                    " update swapfiles every 80 chars
set noswapfile
set updatetime=200

if has('folding')
  if has('windows')
    set fillchars+=vert:\|              
  endif

  set foldmethod=indent               
  set foldopen-=block               
  set foldnestmax=5               
  set foldlevelstart=99               " start unfolded
endif

if has('linebreak')
  let &showbreak=' ↳ '                 " DOWNWARDS ARROW WITH TIP RIGHTWARDS (U+21B3, UTF-8: E2 86 B3)
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
      \   'rg --column --line-number --no-heading --color=always --fixed-strings --smart-case --hidden --follow -g "!yarn.lock" -g "!.git/*" -g "!node_modules/*" '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:65%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)

autocmd! bufwritepost $MYVIMRC source $MYVIMRC
