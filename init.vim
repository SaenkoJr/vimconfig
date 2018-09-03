call plug#begin('~/.vim/plugged')

"--------- Utilities ---------
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'rking/ag.vim'
Plug 'mhinz/vim-startify'       " For sessions
Plug 'w0rp/ale'                 " linter
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'           
Plug 'godlygeek/tabular'        " Align text (beauty tabs)
Plug 'majutsushi/tagbar'        " Show tags 
Plug 'troydm/easybuffer.vim'
Plug 'tpope/vim-surround'       " Surrounding in pairs
"Plug 'terryma/vim-multiple-cursors'
Plug 'Yggdroot/indentLine'
Plug 'jpalardy/vim-slime'       " REPL
Plug 'edkolev/tmuxline.vim'	" tmuxline

"--------- NerdTree and ctrlp ---------
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'

"--------- Airline ---------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"--------- Colors ---------
Plug 'chriskempson/base16-vim'
Plug 'nightsense/stellarized' "stellarized_dark
Plug 'nightsense/seagrey' "seagrey-dark
Plug 'arcticicestudio/nord-vim'

"--------- Syntax --------- 
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
"Plug 'mxw/vim-jsx', { 'for': 'jsx' }
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'digitaltoad/vim-pug'
Plug 'elzr/vim-json'  " For json files
Plug 'wlangstroth/vim-racket'
Plug 'kovisoft/slimv'

"--------- Autocomplete ana snips ---------
Plug 'ternjs/tern_for_vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim' 
Plug 'carlitux/deoplete-ternjs', { 'do': 'sudo npm install -g tern' }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

"--------- Git ---------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

"--------- Colorscheme --------- 
" set termguicolors
" colorscheme oceandark

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" nord
" let g:nord_underline = 1
" let g:nord_uniform_status_lines = 1
" let g:nord_uniform_diff_background = 1
" let g:nord_comment_brightness = 20

"--------- Commenters ---------
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

"--------- Autopairs ---------
let g:AutoPairs={'(':')', '[':']', '{':'}', "'":"'", '"':'"', '`':'`', '<':'>'}

"--------- js syntax highlight ---------
let g:javascript_plugin_flow = 1
let g:vim_jsx_pretty_colorful_config = 1

"--------- emmet settings ---------
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript.jsx,javascript EmmetInstall
let g:user_emmet_leader_key='<C-E>'
let g:user_emmet_settings = {
      \ 'javascript.jsx': {
      \   'extends': [ 'jsx', 'js' ],
      \  },
      \ 'javascript': {
      \   'extends': 'jsx'
      \  },
      \}

"--------- Mappings ---------
let mapleader=' '
let g:multi_cursor_next_key='<C-q>'

"--------- Airline settings ---------
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1
" let g:airline_solarized_bg='dark'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

" for tmuxline + vim-airline integration
let g:airline#extensions#tmuxline#enabled = 1
" start tmuxline even without vim running
let airline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"
let g:tmuxline_preset = {
      \'a'       : '#S',
      \'b'       : ['#I:#P', '#W'],
      \'win'     : ['#I', '#W'],
      \'cwin'    : ['#I', '#W'],
      \'y'       : ['%b %d', '%R'],
      \'z'       : '#(whoami)',
      \'options' : {
      \   'status-justify': 'left',
      \   'window-status-separator': ' ',
      \}}

let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '',
    \ 'right' : '',
    \ 'right_alt' : '',
    \ 'space' : ' '}

"--------- Use deoplete. ---------
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 20
let g:deoplete#max_list = 35

"function g:Multiple_cursors_before()
  "let g:deoplete#disable_auto_complete = 1
"endfunction
"function g:Multiple_cursors_after()
  "let g:deoplete#disable_auto_complete = 0
"endfunction

call deoplete#custom#source('_', 'sorters', ['sorter_word'])

"--------- Use tern_for_vim ---------
let g:tern#command = ['tern']
let g:tern#arguments =['--persistent']

"--------- termjs deoplete ---------
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'node',
                \ 'es6'
                \ ]

"--------- ale settings ---------
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

"--------- indentLine settings ---------
let g:indentLine_char = '┆'
let g:indentLine_conceallevel = 2
let g:vim_json_syntax_conceal = 0

"--------- FZF ---------
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

"--------- Slime ---------
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":1.2"}

