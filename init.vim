call plug#begin('~/.vim/plugged')

"--------- Utilities ---------
Plug 'rking/ag.vim'
Plug 'mhinz/vim-startify'        " For sessions
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'
Plug 'godlygeek/tabular'         " Align text (beauty tabs)
Plug 'liuchengxu/vista.vim'      " for tags
Plug 'troydm/easybuffer.vim'
" Plug 'Yggdroot/indentLine'
Plug 'edkolev/tmuxline.vim'      " tmuxline
Plug 'jpalardy/vim-slime'        " REPL
Plug 'tpope/vim-surround'        " Surrounding in pairs
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-unimpaired'      " fast move
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'          " helpers for unix
Plug 'tpope/vim-jdaddy'          " for json
Plug 'RRethy/vim-illuminate'     " Select illuminating other uses of the current word under the cursor
Plug 'guns/vim-sexp'
Plug 'Shougo/echodoc.vim'
Plug 'metakirby5/codi.vim'       " Like a quokka for vs code
Plug 'luochen1990/rainbow'
Plug 'skywind3000/asyncrun.vim'
Plug 'voldikss/vim-floaterm'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'benmills/vimux'
Plug 'szw/vim-maximizer'

"--------- Test utils ---------
Plug 'janko-m/vim-test'

"--------- fzf ---------
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
Plug 'arcticicestudio/nord-vim'
Plug 'NLKNguyen/papercolor-theme'

"--------- Syntax ---------
Plug 'othree/html5.vim'
Plug 'plasticboy/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Plug 'mxw/vim-jsx'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'elzr/vim-json'
Plug 'leafgarland/typescript-vim'
Plug 'guns/vim-clojure-highlight'
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
" Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }

"--------- Haskell ---------
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-stylishask'

"--------- Clojure ---------
Plug 'guns/vim-clojure-static', { 'for': ['clojure'] }
Plug 'guns/vim-slamhound', { 'for': 'clojure' }                                                          " auto load imports
Plug 'tpope/vim-fireplace', { 'for': ['clojure'] }                                                       " for lein repl
Plug 'tpope/vim-classpath', { 'for': ['clojure'] }
Plug 'tpope/vim-salve', { 'for': ['clojure'] }                                                           " seems like dosen`t work
Plug 'venantius/vim-eastwood', { 'for': 'clojure' }                                                      " linter
Plug 'venantius/vim-cljfmt', { 'for': ['clojure', 'scheme', 'racket'] }                                  " formater

Plug 'eraserhd/parinfer-rust', { 'do': 'cargo build --release', 'for': ['clojure', 'scheme', 'racket'] } " infer parentheses
Plug 'wlangstroth/vim-racket', { 'for': 'racket' }

"--------- Autocomplete ana snips ---------
" Plug 'Shougo/neosnippet.vim'

"--------- LSP servers ---------
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
let g:coc_global_extensions = [
      \ 'coc-css',
      \ 'coc-diagnostic',
      \ 'coc-docker',
      \ 'coc-elixir',
      \ 'coc-eslint',
      \ 'coc-fzf-preview',
      \ 'coc-highlight',
      \ 'coc-html',
      \ 'coc-java',
      \ 'coc-json',
      \ 'coc-lists',
      \ 'coc-python',
      \ 'coc-sh',
      \ 'coc-snippets',
      \ 'coc-solargraph',
      \ 'coc-stylelint',
      \ 'coc-tsserver',
      \ 'coc-vimlsp',
      \ 'coc-yaml',
      \]

"--------- Git ---------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

"--------- ------------ ---------
"---------   Settings   ---------
"--------- ------------ ---------

"--------- Colorscheme ---------
" if filereadable(expand("~/.vimrc_background"))
"   let base16colorspace=256
"   source ~/.vimrc_background
" endif

set t_Co=256
set termguicolors

" PaperColor
set background=light
let g:PaperColor_Theme_Options = {
      \   'theme': {
      \     'default.light': {
      \       'override': {
      \         'color00': ['#f7f7f7', ''],
      \         'vertsplit_bg' : ['#f7f7f7', ''],
      \         'linenumber_bg': ['#e6e6e6', ''],
      \         'linenumber_fg' : ['#b2b2b2', '249'],
      \         'cursorlinenr_bg' : ['#e6e6e6', ''],
      \         'cursorline': ['#e6e6e6', ''],
      \         'cursorcolumn': ['#e6e6e6', ''],
      \         'popupmenu_bg': ['#e6e6e6', ''],
      \         'folded_bg' : ['#d1dfed', ''],
      \       }
      \     }
      \   }
      \ }

colorscheme PaperColor

" nord
let g:nord_underline = 1
let g:nord_uniform_status_lines = 1
let g:nord_uniform_diff_background = 1
let g:nord_comment_brightness = 20
let g:nord_comment_brightness = 20

"--------- Airline settings ---------
let g:airline_theme='sol'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#disable_refresh = 1
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

"--------- rainbow ---------
let g:rainbow_active = 0
let g:rainbow_conf = {
      \ 'separately': {
      \   '*': 0,
      \   'clojure': {
      \   },
      \   'lisp': {
      \   },
      \   'javascript': {
      \   },
      \ }
      \}

"--------- Mappings ---------
let mapleader="\<SPACE>"
let maplocalleader=","

"--------- netrw ---------
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

"--------- Ranger ---------
let g:ranger_map_keys      = 0
let g:ranger_replace_netrw = 1

"--------- Fzf ---------
let g:fzf_preview_command = 'bat --style=numbers --line-range :500 {-1}'
let g:fzf_preview_use_dev_icons = 1

"--------- Illuminate ---------
let g:Illuminate_ftblacklist = ['easymotion']

"--------- Commenters ---------
let g:NERDSpaceDelims           = 1
let g:NERDCreateDefaultMappings = 0
let g:NERDDefaultAlign          = 'left'
let g:NERDCustomDelimiters      = {
      \ 'javascript.jsx': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
      \ 'typescript.tsx': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
      \}

"--------- Vista ---------
let g:vista_default_executive = 'coc'
let g:vista_sidebar_width = 100
let g:vista_echo_cursor_strategy = 'floating_win'

"--------- Maximizer ---------
let g:maximizer_set_default_mapping = 1

"--------- Floaterm ---------
let g:floaterm_keymap_toggle = '<F12>'

"--------- Autopairs ---------
let g:AutoPairs={'(':')', '[':']', '{':'}'}

"--------- Js syntax highlight ---------
let g:vim_jsx_pretty_highlight_close_tag = 1
let g:vim_jsx_pretty_colorful_config = 0
let g:jsx_ext_required = 0

"--------- Python ---------
let g:python_host_prog = '$HOME/.asdf/shims/python2'
let g:python3_host_prog = '$HOME/.asdf/shims/python3'

"--------- Haskell syntax highlight ---------
let g:haskell_indent_if = 2

"--------- Clojure(Script) settings ---------
let g:clojure_align_multiline_strings = 1 " Align subsequent lines in multiline strings
" to the column after the opening quote,
" instead of the same column
" let g:clojure_syntax_keywords = {
"     \ 'clojureMacro': ["defproject", "defcustom"],
"     \ 'clojureFunc': ["string/join", "string/replace"]
"     \ }
let g:salve_auto_start_repl = 1
let g:dispatch_no_maps = 1
let g:clj_fmt_autosave = 1
let g:clojure_fuzzy_indent_patterns = ['^doto', '^with', '^def', '^let', 'go-loop', 'match', '^context', '^GET', '^PUT', '^POST', '^PATCH', '^DELETE', '^ANY', 'this-as', '^are', '^dofor']
let g:clojure_maxlines = 100

"--------- Sexp ---------
let g:sexp_filetypes = 'clojure,scheme,lisp,racket'

"--------- Asyncrun ---------
let g:asyncrun_mode = 'term'
let g:asyncrun_encs = 'gbk'
let g:asyncrun_open = 30
let g:asyncrun_win_loc = 2

"--------- Testrunner ---------
let test#strategy = {
      \ 'file': 'basic',
      \ 'nearest': 'asyncrun',
      \ 'suite': 'basic',
      \}
" let g:test#javascript#jest#options = '--silent'

"--------- LSP (coc) ---------
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = 'S-<tab>'

"--------- IndentLine settings ---------
let g:indentLine_char         = '┆'
let g:indentLine_conceallevel = 2
let g:vim_json_syntax_conceal = 0

"--------- Ctrlsf ---------
let g:ctrlsf_ackprg = 'rg'
let g:ctrlsf_ignore_dir = ['node_modules']
let g:ctrlsf_case_sensitive = 'smart'
let g:ctrlsf_auto_focus = {
      \ "at": "done",
      \ }
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_search_mode  = 'async'

"--------- Slime ---------
let g:slime_target         = "tmux"
let g:slime_paste_file     = "$HOME/.slime_paste"
" let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":1.2"}

"--------- Codi ---------
let g:codi#aliases = {
      \ 'javascript.jsx': 'javascript',
      \ }

"--------- Startify ---------
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_session_persistence = 1
let g:startify_session_dir = '$HOME/.vim/sessions'
let g:startify_fortune_use_unicode = 1
let g:startify_change_to_dir = 0
let g:startify_lists = [
      \ { 'type': function('s:gitModified'),  'header': ['   --------------------  GIT Modified ---------------------']},
      \ { 'type': function('s:gitUntracked'), 'header': ['   --------------------  GIT Untracked --------------------']},
      \ { 'type': 'dir',       'header': ['   ---------------------  MRU Current Dir ---------------------'] },
      \ { 'type': 'files',     'header': ['   ---------------------  MRU ---------------------']            },
      \ { 'type': 'sessions',  'header': ['   ---------------------  Sessions ---------------------']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]
