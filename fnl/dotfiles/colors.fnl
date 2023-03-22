(module dotfiles.colors
  {require {nvim aniseed.nvim
            core aniseed.core
            utils dotfiles.util
            ayu ayu}
   require-macros [dotfiles.macros]})

(nvim.ex.syntax :manual)
(nvim.ex.autocmd :FileType "startify,git,fugitive" "set syntax=on")
(nvim.ex.colorscheme :paper)
(core.assoc-in nvim [:o :background] :light)
