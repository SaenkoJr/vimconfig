local api = vim.api

api.nvim_exec([[ au TextYankPost * lua vim.highlight.on_yank { on_visual = false } ]] , false)

api.nvim_exec(
  [[
    au BufReadPost *.rkt,*.rktl set filetype=racket
    au filetype racket set lisp
    au filetype racket set autoindent

    au BufNewFile,BufRead *.slim setlocal filetype=slim
    au bufnewfile,bufread *.jsx set filetype=javascript.jsx
    au bufnewfile,bufread *.tsx set filetype=typescript.tsx
  ]]
  , false
)
