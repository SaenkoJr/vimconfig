(module dotfiles.colors
  {require {nvim aniseed.nvim
            core aniseed.core
            utils dotfiles.util
            ayu ayu}
   require-macros [dotfiles.macros]})

(nvim.ex.colorscheme :paper)
(core.assoc-in nvim [:o :background] :light)
