(module dotfiles.plugin.fzf
  {require {utils dotfiles.utils}})

;(nvim.ex.command_
  ;"-bang -nargs=* Rg call fzf#vim#grep('"
  ;"rg --column --line-number --no-heading --color=always --fixed-strings --smart-case --hidden --follow -g '!yarn.lock' -g '!.git' -g '!node_modules' -- "
  ;"'.shellescape(<q-args>), 1, <bang>0 ? fzf#vim#with_preview('up:65%') : fzf#vim#with_preview('right:50%:hidden', '?'), <bang>0)")

;(utils.noremap :n :<leader>ff "<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files <cr>")
(utils.noremap :n :<leader>fb "<cmd>Telescope buffers<cr>")

(utils.noremap :n :<leader>fn "<cmd>Rg <c-r><c-w><cr>")
(utils.noremap :n :<leader>fN "<cmd>Telescope grep_string<cr>")

(utils.noremap :n :<leader>ff "<cmd>Files<cr>")
(utils.noremap :n :<leader>FF "<cmd>Files ~<cr>")

(utils.noremap :n :<leader>ds "<cmd>Telescope lsp_document_symbols<cr>")
(utils.noremap :n :<leader>lg "<cmd>Telescope live_grep<cr>")
