local api = vim.api

api.nvim_exec([[ au TextYankPost * lua vim.highlight.on_yank { on_visual = false } ]] , false)

api.nvim_exec(
  [[
    au BufReadPost *.rkt,*.rktl setlocal filetype=racket
    au filetype racket setlocal lisp
    au filetype racket setlocal autoindent

    au BufNewFile,BufRead *.js.erb setlocal filetype=javascript

    au BufNewFile,BufRead *.slim setlocal filetype=slim
    au bufnewfile,bufread *.jsx setlocal filetype=javascript.jsx
    au bufnewfile,bufread *.tsx setlocal filetype=typescript.tsx
  ]]
  , false
)
