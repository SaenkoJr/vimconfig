call plug#begin('~/.vim/plugged')

Plug 'rking/ag.vim'

" NerdTree and ctrlp
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"colors 
Plug 'chriskempson/base16-vim'

" Syntax 
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'digitaltoad/vim-pug'
Plug 'alfredodeza/jacinto.vim'  " For json files

" Autocomplete ana snips
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'

" Git 
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'           
Plug 'godlygeek/tabular'        " Align text
Plug 'majutsushi/tagbar'        " Show tags 
Plug 'troydm/easybuffer.vim'
Plug 'tpope/vim-surround'       " Surrounding in pairs
Plug 'terryma/vim-multiple-cursors'

call plug#end()

colorscheme base16-ocean

" Autopairs
let g:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '<':'>'}

let mapleader=' '
let g:multi_cursor_next_key='<C-q>'

" python provide
"let g:python3_host_prog='C:/Python36/python.exe'
let g:python_host_prog='C:/Python27/python.exe'

"mappings
nmap <Leader>e <Plug>(easymotion-prefix)
map <C-n> :NERDTreeToggle<CR>
map <F2> :EasyBufferToggle<CR>
nmap <F8> :TagbarToggle<CR>

" airline settings 
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1
