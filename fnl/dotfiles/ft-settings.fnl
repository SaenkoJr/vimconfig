(module dotfiles.ft-settings
  {require {core aniseed.core
            utils dotfiles.util
            nvim aniseed.nvim}
   require-macros [dotfiles.macros]})

;; Slim
(autocmd :BufNewFile :BufRead "*.slim" "set ft=slim")

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
