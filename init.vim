call plug#begin('~/.vim/plugged')

Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'rking/ag.vim'
Plug 'mhinz/vim-startify'

" NerdTree and ctrlp
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'

""" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"colors 
Plug 'chriskempson/base16-vim'

"" Syntax 
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'digitaltoad/vim-pug'
Plug 'alfredodeza/jacinto.vim'  " For json files

""" Autocomplete ana snips
Plug 'ternjs/tern_for_vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

""" Git 
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'           
Plug 'godlygeek/tabular'        " Align text
"Plug 'majutsushi/tagbar'        " Show tags 
Plug 'troydm/easybuffer.vim'
Plug 'tpope/vim-surround'       " Surrounding in pairs
"Plug 'terryma/vim-multiple-cursors'

call plug#end()

colorscheme base16-ocean

" Autopairs
let g:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '<':'>'}

let mapleader=' '
let g:multi_cursor_next_key='<C-q>'

" python provide
let g:python3_host_prog='C:/Program Files/Python36/python.exe'
let g:python_host_prog='C:/Python27/python.exe'

"mappings
nmap <Leader>e <Plug>(easymotion-prefix)
map <C-n> :NERDTreeToggle<CR>
map <F2> :EasyBufferToggle<CR>
nmap <F8> :TagbarToggle<CR>

" airline settings 
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1

" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 20

" Use tern_for_vim
let g:tern#command = ['tern']
let g:tern#arguments =['--persistent']

" termjs deoplete
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ 'node',
                \ 'es6'
                \ ]
