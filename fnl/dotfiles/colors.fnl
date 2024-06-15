(local core (require :aniseed.core))
(local nvim (require :aniseed.nvim))

(local fts-syntax-on [:startify :git :fugitive :slim :nginx
                      :j2 :checkhealth :floaterm :eruby :zsh
                      :conf :text :toml])

(nvim.ex.syntax :manual)
(nvim.ex.autocmd :FileType (table.concat fts-syntax-on ",") "set syntax=on")
(nvim.ex.colorscheme :paper)
(core.assoc-in nvim [:o :background] :light)
