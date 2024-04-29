(local nvim (require :aniseed.nvim))
(local core (require :aniseed.core))
(local ayu (require :ayu))

(nvim.ex.syntax :manual)
(nvim.ex.autocmd :FileType "startify,git,fugitive,slim,nginx,j2,checkhealth,floaterm" "set syntax=on")
(nvim.ex.colorscheme :ayu-dark)
; (core.assoc-in nvim [:o :background] :light)
