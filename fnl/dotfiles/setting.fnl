(module dotfiles.setting
  {require {nvim aniseed.nvim
            core aniseed.core
            utils dotfiles.util}})

(utils.set-var :g :python_host_prog  "$HOME/.asdf/shims/python2")
(utils.set-var :g :python3_host_prog "$HOME/.asdf/shims/python3")

(utils.set-var :g :loaded_netrw       1)
(utils.set-var :g :loaded_netrwPlugin 1)

(nvim.ex.filetype "plugin indent on")
(nvim.ex.syntax "sync minlines=256")
(nvim.ex.colorscheme :paper)

(utils.set-var :g :ayucolor :dark)

(def- global-opts
  {;:background     :light
   :termguicolors  true
   :clipboard      :unnamedplus
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
   :autowrite      true
   :scrolloff      3
   :shortmess      (.. nvim.o.shortmess "c")
   :showcmd        true
   :showmode       false
   :sidescrolloff  10
   :pumheight      30
   :regexpengine   0
   :smartcase      true
   :smarttab       true
   :splitbelow     true
   :lazyredraw     true
   :splitright     true
   :swapfile       false
   :lazyredraw     false
   :updatetime     300
   :viewoptions    :options
   :whichwrap      "b,<,>,[,],l,h"
   :wildmenu       true})

(def- window-opts
  {:breakindent    true
   :foldmethod     :expr
   :foldexpr       "nvim_treesitter#foldexpr()"
   :foldnestmax    10
   :number         true
   :relativenumber true
   :wrap           false})

(def buffer-opts
  {:shiftwidth  2
   :tabstop     2
   :synmaxcol   200
   :textwidth   100})

(nvim.ex.set :cindent)
(nvim.ex.set :expandtab)
(nvim.ex.set :smartindent)

(utils.set-options :global global-opts)
(utils.set-options :window window-opts)
(utils.set-options :buffer buffer-opts)
