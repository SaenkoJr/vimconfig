(module saenkomm.setting
  {require {nvim aniseed.nvim
            core aniseed.core
            utils saenkomm.util}
   require-macros [saenkomm.macros]})

(utils.set-var :g :python_host_prog  "$HOME/.asdf/shims/python2")
(utils.set-var :g :python3_host_prog "$HOME/.asdf/shims/python3")

(utils.set-var :g :loaded_netrw       1)
(utils.set-var :g :loaded_netrwPlugin 1)

(nvim.ex.filetype "plugin indent on")
(nvim.ex.syntax "sync minlines=256")

(augroup
  YankHighlight
  (autocmd :TextYankPost :* :silent! "lua vim.highlight.on_yank()"))


(def- global-opts
  {:clipboard      :unnamedplus
   :completeopt    "menuone,noselect"
   :fillchars      "stlnc:-,vert:|"
   ; :foldlevelstart 1
   :mouse          :a
   :scrolloff      3
   :shortmess      (.. nvim.o.shortmess "c")
   :sidescrolloff  10
   :pumheight      30
   :regexpengine   0
   :updatetime     50})
   ; :viewoptions    :options})
   ; :whichwrap      "b,<,>,[,],l,h"})

(def- window-opts
  {:foldmethod  :expr
   :foldexpr    "nvim_treesitter#foldexpr()"
   :foldnestmax 10
   :foldlevel   20})

(def buffer-opts
  {:shiftwidth 2
   :tabstop    2
   :synmaxcol  300
   :textwidth  0})

(def- enabled
  [:cindent     :termguicolors :expandtab
   :smartindent :smartcase     :smarttab
   :splitbelow  :splitright    :lazyredraw
   :hidden      :hlsearch      :ignorecase
   :incsearch   :autowrite     :showcmd
   :breakindent :number        :relativenumber
   :wildmenu])

(def- disabled
  [:nobk :nojs :nosmd :noswapfile :nolz :nowrap])

(utils.nvim-sets enabled)
(utils.nvim-sets disabled)

(utils.set-options global-opts)
(utils.set-options window-opts)
(utils.set-options buffer-opts)
