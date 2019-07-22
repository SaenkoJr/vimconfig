call plug#begin('~/.vim/plugged')

"--------- Utilities ---------
Plug 'rking/ag.vim'
Plug 'mhinz/vim-startify'       " For sessions
Plug 'w0rp/ale'                 " linter
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'
Plug 'godlygeek/tabular'        " Align text (beauty tabs)
Plug 'liuchengxu/vista.vim' " for tags
Plug 'troydm/easybuffer.vim'
" Plug 'Yggdroot/indentLine'
Plug 'edkolev/tmuxline.vim'	    " tmuxline
Plug 'jpalardy/vim-slime'       " REPL
Plug 'tpope/vim-surround'       " Surrounding in pairs
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-unimpaired'     " fast move
Plug 'tpope/vim-repeat'
Plug 'RRethy/vim-illuminate'    " Select illuminating other uses of the current word under the cursor
Plug 'guns/vim-sexp'
Plug 'terryma/vim-multiple-cursors'
Plug 'chrisbra/Colorizer'
Plug 'metakirby5/codi.vim'      " Like a quokka for vs code

"--------- Test utils ---------
Plug 'janko-m/vim-test'

"--------- NerdTree and fzf ---------
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'

"--------- Airline ---------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"--------- Colors ---------
Plug 'chriskempson/base16-vim'
Plug 'nightsense/stellarized' " stellarized_dark
Plug 'nightsense/seagrey'     " seagrey-dark
Plug 'arcticicestudio/nord-vim'

"--------- Syntax ---------
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'elzr/vim-json'
Plug 'leafgarland/typescript-vim'
Plug 'guns/vim-clojure-highlight'

"--------- Clojure ---------
Plug 'guns/vim-clojure-static', { 'for': ['clojure'] }
Plug 'tpope/vim-fireplace', { 'for': ['clojure'] }             " for lein repl
Plug 'tpope/vim-classpath', { 'for': ['clojure'] }
Plug 'tpope/vim-salve', { 'for': ['clojure'] }                 " seems like dosen`t work
Plug 'venantius/vim-eastwood', { 'for': 'clojure' }

Plug 'eraserhd/parinfer-rust', { 'do': 'cargo build --release', 'for': ['clojure', 'scheme', 'racket'] } " infer parentheses
Plug 'venantius/vim-cljfmt', { 'for': ['clojure', 'scheme', 'racket'] }   " formater
Plug 'wlangstroth/vim-racket', { 'for': 'racket' }

"--------- Autocomplete ana snips ---------
Plug 'mattn/emmet-vim'
Plug 'Shougo/neosnippet.vim'

"--------- LSP servers ---------
Plug 'neoclide/coc.nvim', { 'tag': '*', 'do': { -> coc#util#install() } }
" Plug 'sourcegraph/javascript-typescript-langserver', {'do': 'npm install && npm run build'}
" Plug 'flowtype/flow-language-server', {'do': 'npm install && npm run build'}

"--------- Git ---------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

"--------- netrw ---------
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

"--------- Mappings ---------
let mapleader="\<SPACE>"
let maplocalleader=","

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-q>'
let g:multi_cursor_select_all_word_key = '<A-q>'
let g:multi_cursor_start_key           = 'g<C-q>'
let g:multi_cursor_select_all_key      = 'g<A-q>'
let g:multi_cursor_next_key            = '<C-q>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

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

"--------- Illuminate ---------
let g:Illuminate_ftblacklist = ['nerdtree', 'easymotion']

"--------- NerdTree ---------
let NERDTreeQuitOnOpen = 1
let NERDTreeShowBookmarks=1
let NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeWinSize = 35
let NERDTreeIgnore = ['node_modules']

"--------- Commenters ---------
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

"--------- Vista ---------
let g:vista_default_executive = 'coc'

"--------- Autopairs ---------
let g:AutoPairs={'(':')', '[':']', '{':'}'}

"--------- Js syntax highlight ---------
let g:javascript_plugin_flow = 1
let g:vim_jsx_pretty_colorful_config = 1
let g:jsx_ext_required = 0

"--------- Emmet settings ---------
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<M-,>'
let g:user_emmet_settings = {
      \ 'javascript.jsx': {
      \   'extends': [ 'jsx', 'js' ],
      \  },
      \ 'javascript': {
      \   'extends': 'jsx'
      \  },
      \}

"--------- Clojure(Script) settings ---------
let g:clojure_align_multiline_strings = 1 " Align subsequent lines in multiline strings
                                          " to the column after the opening quote,
                                          " instead of the same column
let g:clojure_syntax_keywords = {
    \ 'clojureMacro': ["defproject", "defcustom"],
    \ 'clojureFunc': ["string/join", "string/replace"]
    \ }
let g:salve_auto_start_repl = 1
let g:dispatch_no_maps = 1
let g:clj_fmt_autosave = 1
let g:clojure_fuzzy_indent_patterns = ['^doto', '^with', '^def', '^let', 'go-loop', 'match', '^context', '^GET', '^PUT', '^POST', '^PATCH', '^DELETE', '^ANY', 'this-as', '^are', '^dofor']
let g:clojure_maxlines = 100

"--------- Sexp ---------
let g:sexp_filetypes = 'clojure,scheme,lisp,racket'

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
      \'a'       : '#{?client_prefix,PREFIX #S,#S}',
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
    \ 'left'      : '',
    \ 'left_alt'  : '',
    \ 'right'     : '',
    \ 'right_alt' : '',
    \ 'space'     : ' '}

"--------- Testrunner ---------
let test#strategy = "basic"
" let g:test#javascript#jest#options = '--silent'

"--------- Use deoplete / ncm2 / ycm ---------
" let g:neosnippet#enable_completed_snippet = 1
" let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#enable_auto_clear_markers = 1
let g:neosnippet#enable_conceal_markers = 0
let g:neosnippet#disable_runtime_snippets = {
\   '_' : 1,
\ }
" let g:autocomplete_flow#insert_paren_after_function = 0
let g:neosnippet#snippets_directory = $HOME.'/.config/nvim/private-snips'

"--------- LSP (coc) ---------

"--------- Ale settings ---------
let g:ale_linters = {
      \ 'javascript'     : ['eslint'],
      \ 'javascript.jsx' : ['eslint'],
      \ 'clojure'        : ['joker'],
      \}

let g:ale_linter_aliases = { 'jsx': 'css' }
let g:ale_fixers = {
      \ '*'              : ['remove_trailing_lines', 'trim_whitespace'],
      \ 'javascript'     : ['prettier', 'eslint'],
      \ 'javascript.jsx' : ['prettier', 'eslint'],
      \ 'clojure'        : ['joker'],
      \}

let g:ale_completion_enabled   = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter        = 0

hi ALEError cterm=underline ctermfg=red
hi ALEWarning cterm=underline ctermfg=yellow

hi ALEErrorSign ctermfg=red
hi ALEWarningSign ctermfg=yellow

"--------- IndentLine settings ---------
let g:indentLine_char         = '┆'
let g:indentLine_conceallevel = 2
let g:vim_json_syntax_conceal = 0

"--------- FZF ---------
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git --ignore yarn.lock --ignore-dir node_modules --ignore-dir .local/share/nvim/view --ignore-dir .cache/neosnippet -g ""'

"--------- Ctrlsf ---------
let g:ctrlsf_auto_focus = {
    \ "at": "done",
    \ }
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_search_mode  = 'async'

"--------- Slime ---------
let g:slime_target         = "tmux"
let g:slime_paste_file     = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":1.2"}

"--------- Codi ---------
let g:codi#aliases = {
    \ 'javascript.jsx': 'javascript',
    \ }
