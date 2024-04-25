(module saenkomm.colors
  {require {nvim aniseed.nvim
            core aniseed.core
            utils saenkomm.util
            ayu ayu}
   require-macros [saenkomm.macros]})

(nvim.ex.syntax :manual)
(nvim.ex.autocmd :FileType "startify,git,fugitive,slim,nginx,j2" "set syntax=on")
(nvim.ex.colorscheme :ayu-dark)
; (core.assoc-in nvim [:o :background] :light)
