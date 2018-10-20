call plug#begin('~/.vim/plugged')

"--------- Utilities ---------
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
" Plug 'terryma/vim-multiple-cursors'
Plug 'Yggdroot/indentLine'
Plug 'jpalardy/vim-slime'       " REPL
Plug 'edkolev/tmuxline.vim'	" tmuxline
Plug 'airblade/vim-rooter'

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
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-pug'
Plug 'elzr/vim-json'
Plug 'wlangstroth/vim-racket'
Plug 'kovisoft/slimv'
Plug 'leafgarland/typescript-vim'

"--------- Autocomplete ana snips ---------
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \}
" Plug 'nixprime/cpsm', { 'do': 'PY3=ON ./install.sh' }
Plug 'mattn/emmet-vim' 
" Plug 'ternjs/tern_for_vim'
" Plug 'carlitux/deoplete-ternjs', { 'do': 'sudo npm install -g tern' }
Plug 'wokalski/autocomplete-flow'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
Plug 'Shougo/echodoc.vim'

"--------- LSP servers --------- 
Plug 'sourcegraph/javascript-typescript-langserver', {'do': 'npm install && npm run build'}
Plug 'flowtype/flow-language-server', {'do': 'npm install && npm run build'}

"--------- Git ---------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

"--------- Colorscheme --------- 
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

"--------- Rooter ---------
let g:rooter_patterns = ['package.json', '.git/']

"--------- js syntax highlight ---------
let g:javascript_plugin_flow = 1
let g:vim_jsx_pretty_colorful_config = 1
let g:jsx_ext_required = 0

"--------- emmet settings ---------
let g:user_emmet_install_global = 0
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
let mapleader=" "
let g:multi_cursor_next_key='<C-q>'

"--------- Airline settings ---------
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

" for tmuxline + vim-airline integration
let g:airline#extensions#tmuxline#enabled = 1
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
let g:echodoc_enable_at_startup=1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#auto_complete_delay = 10
let g:deoplete#max_list = 50
let g:deoplete#delimiters = ['/', '.']
let g:deoplete#camel_case = v:true
let g:deoplete#smart_case = v:true
let g:deoplete#min_pattern_length = 1
let g:autocomplete_flow#insert_paren_after_function = 1
let g:deoplete#ignore_sources = {'_': ['around', 'buffer' ]}
set completeopt=menuone,noselect,noinsert,longest
set completeopt-=preview
let g:neosnippet#enable_completed_snippet = 1
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#disable_runtime_snippets = {
\   '_' : 1,
\ }

" function g:Multiple_cursors_before()
"   let g:deoplete#disable_auto_complete = 1
" endfunction
" function g:Multiple_cursors_after()
"   let g:deoplete#disable_auto_complete = 0
" endfunction

call deoplete#custom#source('around', 'matchers', ['matcher_full_fuzzy'])
call deoplete#custom#source('LanguageClient', 'mark', '[lang-server]')
call deoplete#custom#source('_', 'sorters', ['converter_auto_paren'])

"--------- Use tern_for_vim ---------
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

"--------- termjs deoplete ---------
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'node',
                \ 'es6'
                \ ]

"--------- LSP ---------
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
      \ 'reason':         ['ocaml-language-server', '--stdio'],
      \ 'ocaml':          ['ocaml-language-server', '--stdio'],
      \ 'javascript':     ['javascript-typescript-stdio'],
      \ 'javascript.jsx': ['javascript-typescript-stdio'],
      \}

let g:LanguageClient_hoverPreview = "Auto"
let g:LanguageClient_waitOutputTimeout = 5
let g:LanguageClient_diagnosticsEnable = 0

let g:LanguageClient_rootMarkers = {
      \ 'javascript': ['.flowconfig', 'package.json'],
      \}
"--------- ale settings ---------
let g:ale_linters = {
      \ 'jsx':        ['eslint', 'flow'],
      \ 'javascript': ['eslint', 'flow'],
      \}

let g:ale_linter_aliases = { 'jsx': 'css' }
let g:ale_fixers = {
      \ 'jsx':        ['eslint'],
      \ 'javascript': ['eslint'],
      \}

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

hi ALEError ctermbg=red ctermfg=white cterm=underline
hi ALEWarning ctermbg=yellow ctermfg=black cterm=underline

"--------- indentLine settings ---------
let g:indentLine_char = '┆'
let g:indentLine_conceallevel = 2
let g:vim_json_syntax_conceal = 0

"--------- FZF ---------
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git --ignore-dir .local/share/nvim/view -g ""'

"--------- Slime ---------
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":1.2"}

