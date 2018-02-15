call plug#begin('~/.vim/plugged')

" Utilities
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'rking/ag.vim'
Plug 'mhinz/vim-startify'
Plug 'w0rp/ale' " linter
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'           
Plug 'godlygeek/tabular'        " Align text
Plug 'majutsushi/tagbar'        " Show tags 
Plug 'troydm/easybuffer.vim'
Plug 'tpope/vim-surround'       " Surrounding in pairs
"Plug 'terryma/vim-multiple-cursors'

" NerdTree and ctrlp
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"colors 
Plug 'chriskempson/base16-vim'
Plug 'nightsense/stellarized' "stellarized_dark
Plug 'nightsense/seagrey' "seagrey-dark
Plug 'arcticicestudio/nord-vim'

" Syntax 
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'jsx' }
Plug 'digitaltoad/vim-pug'
Plug 'alfredodeza/jacinto.vim'  " For json files

" Autocomplete ana snips
Plug 'ternjs/tern_for_vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'html', 'css'] }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Git 
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

"colors
colorscheme nord
let g:nord_uniform_status_lines = 1
let g:nord_comment_brightness = 15

" Autopairs
let g:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '<':'>'}

" python provide
let g:python3_host_prog='C:/Program Files/Python36/python.exe'
let g:python_host_prog='C:/Python27/python.exe'

"emmet settings
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript.jsx EmmetInstall
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_settings = {
      \ 'javascript.jsx': {
      \   'extends': 'jsx',
      \  },
      \}

"mappings
let mapleader=' '
let g:multi_cursor_next_key='<C-q>'
nmap <Leader>e <Plug>(easymotion-prefix)
map <C-n> :NERDTreeToggle<CR>
map <F2> :EasyBufferToggle<CR>
"nnoremap <silent> <F8> :TagbarToggle<CR>
nnoremap <silent> <F8> :TagbarOpenAutoClose<CR>

" airline settings 
"let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 20
let g:deoplete#max_list = 15

"function g:Multiple_cursors_before()
  "let g:deoplete#disable_auto_complete = 1
"endfunction
"function g:Multiple_cursors_after()
  "let g:deoplete#disable_auto_complete = 0
"endfunction

call deoplete#custom#source('_', 'sorters', ['sorter_word'])

" Use tern_for_vim
let g:tern#command = ['tern']
let g:tern#arguments =['--persistent']

" termjs deoplete
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'node',
                \ 'es6'
                \ ]

" ale settings
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'jsx': ['eslint'],
      \}

let g:ale_linter_aliases = { 'jsx': 'css' }
let g:ale_fixers = {
      \ 'javascript': ['eslint'],
      \}

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
