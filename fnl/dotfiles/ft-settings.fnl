(module dotfiles.ft-settings
  {require {core aniseed.core
            utils dotfiles.util
            nvim aniseed.nvim}
   require-macros [dotfiles.macros]})

; (augroup SyntaxHighlight
;          (autocmd :FileType
;                   "slim"
;                   "set syntax=off"))

(autocmd :BufNewFile :BufRead "*.slim" "set ft=slim")

;; Rust
(utils.set-var :g :rust_recommended_style 0)

;; Racket
(nvim.ex.autocmd
  :FileType
  "sicp"
  "set filetype=racket")
