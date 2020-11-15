call plug#begin('~/.vim/plugged')

"------------- ------------- -------------
"-------------   Utilities   -------------
"------------- ------------- -------------
Plug 'rking/ag.vim'
Plug 'mhinz/vim-startify'
  "==============================
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
        \ { 'type': 'dir',       'header': ['   ---------------------  MRU Current Dir ---------------------'] },
        \ { 'type': function('s:gitModified'),  'header': ['   --------------------  GIT Modified ---------------------']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   --------------------  GIT Untracked --------------------']},
        \ { 'type': 'files',     'header': ['   ---------------------  MRU ---------------------']            },
        \ { 'type': 'sessions',  'header': ['   ---------------------  Sessions ---------------------']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]
  " ==============================

Plug 'easymotion/vim-easymotion'
Plug 'rhysd/clever-f.vim'
  " ==============================
  let g:clever_f_smart_case = 1
  " ==============================

Plug 'jiangmiao/auto-pairs'
  " ==============================
  let g:AutoPairs={'(':')', '[':']', '{':'}'}
  " ==============================

Plug 'matze/vim-move'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'liuchengxu/vista.vim'      " For tags
  " ==============================
  let g:vista_default_executive = 'coc'
  let g:vista_sidebar_width = 100
  let g:vista_echo_cursor_strategy = 'floating_win'
  " ==============================

Plug 'troydm/easybuffer.vim'
Plug 'Yggdroot/indentLine'
  " ==============================
  let g:indentLine_fileType     = ['pug']
  let g:indentLine_char         = '┆'
  let g:indentLine_conceallevel = 2
  let g:vim_json_syntax_conceal = 0
  " ==============================

Plug 'ntpeters/vim-better-whitespace'
  " ==============================
  let g:better_whitespace_enabled=1
  let g:strip_whitespace_on_save = 1
  let g:strip_whitespace_confirm=0
  " ==============================

Plug 'jpalardy/vim-slime'        " REPL
  " ==============================
  let g:slime_target         = "tmux"
  let g:slime_paste_file     = "$HOME/.slime_paste"
  " let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":1.2"}
  " ==============================

Plug 'tpope/vim-surround'        " Surrounding in pairs
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-unimpaired'      " fast move
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'          " helpers for unix
Plug 'tpope/vim-jdaddy'          " for json
Plug 'RRethy/vim-illuminate'     " Select illuminating other uses of the current word under the cursor
  " ==============================
  let g:Illuminate_ftblacklist = ['easymotion']
  " ==============================

Plug 'guns/vim-sexp'
  " ==============================
  let g:sexp_filetypes = 'clojure,scheme,lisp,racket'
  " ==============================

Plug 'Shougo/echodoc.vim'
Plug 'metakirby5/codi.vim'       " Like a quokka for vs code
  " ==============================
  let g:codi#aliases = {
        \ 'javascript.jsx': 'javascript',
        \ }
  let g:codi#virtual_text_prefix = "❯❯ "
  " ==============================

Plug 'scrooloose/nerdcommenter'
  " ==============================
  let g:NERDSpaceDelims           = 1
  let g:NERDCreateDefaultMappings = 0
  let g:NERDDefaultAlign          = 'left'
  let g:NERDCustomDelimiters      = {
        \ 'javascript.jsx': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
        \ 'typescript.tsx': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
        \}
  " ==============================

Plug 'luochen1990/rainbow'
  " ==============================
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
  " ==============================

Plug 'skywind3000/asyncrun.vim'
  " ==============================
  let g:asyncrun_mode = 'term'
  let g:asyncrun_encs = 'gbk'
  let g:asyncrun_open = 30
  let g:asyncrun_win_loc = 2
  " ==============================

Plug 'voldikss/vim-floaterm'
  " ==============================
  let g:floaterm_keymap_toggle = '<F12>'
  " ==============================

Plug 'francoiscabrol/ranger.vim'
  " ==============================
  let g:ranger_map_keys      = 0
  let g:ranger_replace_netrw = 1
  " ==============================

Plug 'rbgrouleff/bclose.vim'
Plug 'benmills/vimux'
Plug 'szw/vim-maximizer'
  " ==============================
  let g:maximizer_set_default_mapping = 1
  " ==============================

Plug 'puremourning/vimspector'
  " ==============================
  let g:vimspector_install_gadgets = ['vscode-node-debug2', 'vscode-for-chrome', 'debugpy']
  let g:vimspector_base_dir = expand('$HOME/.vim/vimspector-config')
  " ==============================

Plug 'farmergreg/vim-lastplace'
  " ==============================
  let g:lastplace_open_folds = 0
  " ==============================

Plug 'airblade/vim-rooter'
  " ==============================
  let g:rooter_patterns = ['.git', '.gitignore', 'docker-compose.yml', 'Gemfile', 'Makefile', 'package.json', 'stack.yaml']
  " ==============================

Plug 'junegunn/vim-easy-align'

"------------- ------------ -------------
"-------------  Test utils  -------------
"------------- ------------ -------------
Plug 'janko-m/vim-test'
  " ==============================
  let test#strategy = {
        \ 'file': 'basic',
        \ 'nearest': 'asyncrun',
        \ 'suite': 'basic',
        \}
  " let g:test#javascript#jest#options = '--silent'
  " ==============================

"------------- ------------ -------------
"-------------     FZF      -------------
"------------- ------------ -------------
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
  " ==============================
  let g:fzf_preview_command = 'bat --style=numbers --line-range :500 {-1}'
  let g:fzf_preview_use_dev_icons = 1
  " ==============================

Plug 'dyng/ctrlsf.vim'
  " ==============================
  let g:ctrlsf_ackprg = 'rg'
  let g:ctrlsf_ignore_dir = ['node_modules']
  let g:ctrlsf_case_sensitive = 'smart'
  let g:ctrlsf_auto_focus = {
        \ "at": "done",
        \ }
  let g:ctrlsf_default_root = 'project'
  let g:ctrlsf_search_mode  = 'async'
  " ==============================

"------------- ------------- -------------
"-------------    Airline    -------------
"------------- ------------- -------------
Plug 'edkolev/tmuxline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
  " ==============================
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
  " ==============================

"------------- ------------- -------------
"-------------    Colors     -------------
"------------- ------------- -------------
Plug 'chriskempson/base16-vim'
Plug 'arcticicestudio/nord-vim'
  " ==============================
  let g:nord_underline = 1
  let g:nord_uniform_status_lines = 1
  let g:nord_uniform_diff_background = 1
  let g:nord_comment_brightness = 20
  let g:nord_comment_brightness = 20
  " ==============================

Plug 'NLKNguyen/papercolor-theme'
  " ==============================
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
  " ==============================

"------------- ------------- -------------
"-------------    Syntax     -------------
"------------- ------------- -------------
Plug 'othree/html5.vim'
Plug 'plasticboy/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Plug 'mxw/vim-jsx'
Plug 'maxmellon/vim-jsx-pretty'
  " ==============================
  let g:vim_jsx_pretty_highlight_close_tag = 1
  let g:vim_jsx_pretty_colorful_config = 0
  let g:jsx_ext_required = 0
  " ==============================

Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'elzr/vim-json'
Plug 'leafgarland/typescript-vim'
Plug 'guns/vim-clojure-highlight'
Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
" Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }

"------------- ------------- -------------
"-------------    Haskell    -------------
"------------- ------------- -------------
Plug 'neovimhaskell/haskell-vim'
  " ==============================
  let g:haskell_indent_if = 2
  " ==============================

Plug 'alx741/vim-stylishask'

"------------- ------------- -------------
"-------------    Clojure     -------------
"------------- ------------- -------------
Plug 'guns/vim-clojure-static', { 'for': ['clojure'] }
  " ==============================
  let g:clojure_align_multiline_strings = 1 " Align subsequent lines in multiline strings
  " to the column after the opening quote,
  " instead of the same column
  " let g:clojure_syntax_keywords = {
  "     \ 'clojureMacro': ["defproject", "defcustom"],
  "     \ 'clojureFunc': ["string/join", "string/replace"]
  "     \ }
  let g:dispatch_no_maps = 1
  let g:clojure_fuzzy_indent_patterns = ['^doto', '^with', '^def', '^let', 'go-loop', 'match', '^context', '^GET', '^PUT', '^POST', '^PATCH', '^DELETE', '^ANY', 'this-as', '^are', '^dofor']
  let g:clojure_maxlines = 100
  " ==============================

Plug 'guns/vim-slamhound', { 'for': 'clojure' }                                                          " auto load imports
Plug 'tpope/vim-fireplace', { 'for': ['clojure'] }                                                       " for lein repl
Plug 'tpope/vim-classpath', { 'for': ['clojure'] }
Plug 'tpope/vim-salve', { 'for': ['clojure'] }                                                           " seems like dosen`t work
  " ==============================
  let g:salve_auto_start_repl = 1
  " ==============================

Plug 'venantius/vim-eastwood', { 'for': 'clojure' }                                                      " linter
Plug 'venantius/vim-cljfmt', { 'for': ['clojure', 'scheme', 'racket'] }                                  " formater
  " ==============================
  let g:clj_fmt_autosave = 1
  " ==============================

Plug 'eraserhd/parinfer-rust', { 'do': 'cargo build --release', 'for': ['clojure', 'scheme', 'racket'] } " infer parentheses
Plug 'wlangstroth/vim-racket', { 'for': 'racket' }

"------------- ------------- -------------
"-------------  LSP servers  -------------
"------------- ------------- -------------
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  " ==============================
  let g:coc_snippet_next = '<tab>'
  let g:coc_snippet_prev = 'S-<tab>'
  let g:coc_global_extensions = [
        \ 'coc-css',
        \ 'coc-cssmodules',
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
        \ 'coc-prettier',
        \ 'coc-python',
        \ 'coc-sh',
        \ 'coc-snippets',
        \ 'coc-solargraph',
        \ 'coc-stylelint',
        \ 'coc-template',
        \ 'coc-tsserver',
        \ 'coc-vimlsp',
        \ 'coc-yaml',
        \]
  " ==============================

"------------- ------------- -------------
"-------------      Git      -------------
"------------- ------------- -------------
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

"------------- ------------- -------------
"-------------   Settings    -------------
"------------- ------------- -------------

"--------- Colorscheme ---------
" if filereadable(expand("~/.vimrc_background"))
"   let base16colorspace=256
"   source ~/.vimrc_background
" endif

set t_Co=256
set termguicolors

" PaperColor
set background=light
colorscheme PaperColor

"--------- Mappings ---------
let mapleader="\<SPACE>"
let maplocalleader=","

"--------- Netrw ---------
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

"--------- Python host ---------
let g:python_host_prog = '$HOME/.asdf/shims/python2'
let g:python3_host_prog = '$HOME/.asdf/shims/python3'
