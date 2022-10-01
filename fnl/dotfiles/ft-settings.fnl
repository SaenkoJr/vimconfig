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

;; Packer
(nvim.ex.autocmd :FileType "packer" "setlocal cursorline")

;; Orgmode
(nvim.ex.autocmd :FileType "orgagenda" "setlocal cursorline")

;; Folding
(nvim.ex.autocmd :FileType "eruby.yaml" "set foldmethod=indent")
(nvim.ex.autocmd :FileType "fennel" "set foldmethod=indent")
