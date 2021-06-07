(module dotfiles.plugin.fzf
  {require {nvim aniseed.nvim
            util dotfiles.util}})

(def rg_opts
  (.. "rg --column --line-number --no-heading --fixed-strings --smart-case --hidden --follow "
      "-g \"!yarn.lock\" -g \"!.git\" -g \"!node_modules\" -- "))

(nvim.ex.command_
  "-bang -nargs=* Rg call fzf#vim#grep('"
  rg_opts
  "'.shellescape(<q-args>), 1,"
  "<bang>0 ? fzf#vim#with_preview(\"up:65%\") : fzf#vim#with_preview(\"right:50%:hidden\", \"?\"), <bang>0)")
  ; "fzf#vim#with_preview(), <bang>0)")

; (utils.noremap :n :<leader>ff "<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files <cr>")
(util.noremap :n :<leader>fb "<cmd>Telescope buffers<cr>")

(util.noremap :n :<leader>fn ":Rg <c-r><c-w><cr>")
(util.noremap :n :<leader>FN ":Telescope grep_string<cr>")

(util.noremap :n :<leader>ff "<cmd>Files<cr>")
(util.noremap :n :<leader>FF "<cmd>Files ~<cr>")

(util.noremap :n :<leader>ds "<cmd>Telescope lsp_document_symbols<cr>")
(util.noremap :n :<leader>lg "<cmd>Telescope live_grep<cr>")
