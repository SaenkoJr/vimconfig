(module dotfiles.settings
  {require {nvim aniseed.nvim
            core aniseed.core
            utils dotfiles.utils}})

(utils.set_var :g :python_host_prog  "$HOME/.asdf/shims/python2")
(utils.set_var :g :python3_host_prog "$HOME/.asdf/shims/python3")

(utils.set_var :g :loaded_netrw       1)
(utils.set_var :g :loaded_netrwPlugin 1)

(utils.set_var :g :conjure#client#fennel#aniseed#aniseed_module_prefix "aniseed.")
(utils.set_var :g :conjure#eval#result_register "*")
(utils.set_var :g :conjure#log#botright true)

(utils.set_var :g :user_emmet_mode "i")
(utils.set_var :g :user_emmet_leader_key "<c-e>")
(utils.set_var :g :user_emmet_install_global 0)
(nvim.ex.autocmd
  :FileType
  "html,css,scss,erb,eruby,html.erb,javascript.jsx,jsx"
  :EmmetInstall)

(nvim.ex.autocmd
  :BufReadPost
  "*.fnl setlocal filetype=fennel")

(nvim.ex.filetype "plugin indent on")
(nvim.ex.syntax "sync minlines=256")
(nvim.ex.colorscheme :PaperColor)

(def- global_opts
  {:background     :light
   :clipboard      :unnamedplus
   :autoread       true
   :backup         false
   :backspace      "indent,eol,start"
   :completeopt    "menuone,noselect"
   :encoding       "UTF-8"
   :fillchars      "stlnc:-,vert:|"
   :foldlevelstart 99
   :hidden         true
   :hlsearch       true
   :ignorecase     true
   :incsearch      true
   :joinspaces     false
   :mouse          :a
   :ttyfast        true
   :autowrite      true
   :regexpengine   1
   :scrolloff      3
   :shortmess      (.. nvim.o.shortmess "c")
   :showcmd        true
   :showmode       false
   :sidescrolloff  10
   :pumheight      30
   :smartcase      true
   :smarttab       true
   :splitbelow     true
   :lazyredraw     false
   :splitright     true
   :swapfile       false
   :termguicolors  true
   :ttyfast        true
   :updatetime     300
   :viewoptions    :options
   :whichwrap      "b,<,>,[,],l,h"})
   ;:wildmenu       true})

(def- window_opts
  {:breakindent    true
   :foldmethod     :expr
   :foldexpr       "nvim_treesitter#foldexpr()"
   :foldnestmax    10
   :number         true
   :relativenumber true
   :wrap           false})

(def- buffer_opts
  {:cindent     true
   :shiftwidth  2
   :tabstop     2
   :expandtab   true
   :smartindent true
   :synmaxcol   200
   :textwidth   100})

(utils.set_options :global global_opts)
(utils.set_options :window window_opts)
(utils.set_options :buffer buffer_opts)
