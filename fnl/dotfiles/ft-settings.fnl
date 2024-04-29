(local nvim (require :aniseed.nvim))
(local utils (require :dotfiles.utils))

;; Slim
(nvim.ex.autocmd :BufNewFile :BufRead "*.slim" "set ft=slim")

;; Rust
(utils.set-var :g :rust_recommended_style 0)

;; Racket
(nvim.ex.autocmd :FileType "sicp" "set filetype=racket")

;; Leads
(nvim.ex.autocmd :FileType "fennel,clojure" "lua vim.opt.listchars:append({ lead = \"⋅\" })")

;; Folding
(nvim.ex.autocmd :FileType "eruby.yaml" "set foldmethod=indent")
(nvim.ex.autocmd :FileType "fennel" "set foldmethod=indent")

;; Cursorline
(nvim.ex.autocmd :FileType "packer,orgagenda" "setlocal cursorline")

;; diagnostic
(nvim.ex.autocmd :BufWinEnter "conjure-log-*,*.log" "lua vim.diagnostic.disable(0)")

(vim.filetype.add
  {:extension {:env :sh}
   :pattern {"%.env%.[%w_.-]+" :sh}})

(vim.filetype.add
  {:extension {:j2 :sh}
   :pattern {"*.j2" :sh}})
