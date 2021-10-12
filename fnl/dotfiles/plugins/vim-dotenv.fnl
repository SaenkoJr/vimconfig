(module dotfiles.plugins.vim-dotenv
  {require {util dotfiles.util
            core aniseed.core
            nvim aniseed.nvim}})

; (nvim.ex.autocmd
;   :VimEnter
;   "*"
;   (if (not (core.empty? (util.glob ".env")))
;     "Dotenv .env"))

(nvim.ex.autocmd
  :BufWritePost
  ".env"
  "Dotenv .env")


