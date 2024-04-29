(local uu (require :dotfiles.utils))
(local cmplsp (require :cmp_nvim_lsp))

(fn safe-require-server-config [name]
  (let [(ok? conf-or-err) (pcall require (.. "dotfiles.lsp.servers." name))]
    (if (not ok?)
      (print (.. "lsp config error: " conf-or-err))
      conf-or-err)))

(local capabilities
  (cmplsp.default_capabilities
    (vim.lsp.protocol.make_client_capabilities)))

(fn on-attach [client bufnr]
  (. (require :virtualtypes) :on_attach)
  ; (set nvim.b.omnifunc :lua.vim.lsp.omnifunc)

  (uu.bnoremap bufnr :n :K ":Lspsaga hover_doc<cr>")
  ; (uu.bnoremap bufnr :n :K "<cmd>lua vim.lsp.buf.hover()<cr>")
  (uu.bnoremap bufnr :n :<leader>K "<cmd>lua vim.lsp.buf.signature_help()<cr>")

  ; (uu.bnoremap bufnr :n :gd "<cmd>lua vim.lsp.buf.definition()<cr>")
  (uu.bnoremap bufnr :n :gd "<cmd>Telescope lsp_definitions<cr>")

  (uu.bnoremap bufnr :n :gr "<cmd>lua vim.lsp.buf.references()<cr>")

  ; (uu.bnoremap bufnr :n :<leader>rn "<cmd>lua vim.lsp.buf.rename()<cr>")
  (uu.bnoremap bufnr :n :<leader>rn ":Lspsaga rename<cr>")

  ; (uu.bnoremap bufnr :n :<leader>ca "<cmd>lua vim.lsp.buf.code_action()<cr>")
  ; (uu.bnoremap bufnr :v :<leader>ca "<cmd>lua vim.lsp.buf.range_code_action()<cr>")
  (uu.bnoremap bufnr :n :<leader>ca ":Lspsaga code_action<cr>")
  (uu.bnoremap bufnr :v :<leader>ca ":Lspsaga range_code_action<cr>")

  (uu.bnoremap bufnr :n :gi "<cmd>lua vim.lsp.buf.implementation()<cr>")
  (uu.bnoremap bufnr :n :<leader>gt "<cmd>lua vim.lsp.buf.type_definition()<cr>")

  ; (uu.bnoremap bufnr :n :<leader>fm "<cmd>lua vim.lsp.buf.format({ async = true })<cr>")
  (uu.bnoremap bufnr :n :<leader>fm "<cmd>lua require('conform').format({ async = true })<cr>")

  (uu.bnoremap bufnr :n :<leader>wa "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>")
  (uu.bnoremap bufnr :n :<leader>wr "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>")

  (uu.bnoremap bufnr :n :gp ":Lspsaga peek_definition<cr>")
  (uu.noremap :n "]d" "<cmd>Lspsaga diagnostic_jump_next<cr>")
  (uu.noremap :n "[d" "<cmd>Lspsaga diagnostic_jump_prev<cr>")
  (uu.noremap :n "<leader>sl" "<cmd>Lspsaga show_line_diagnostics<cr>")
  ; (uu.noremap :n "]d" "<cmd>lua vim.diagnostic.goto_next()<CR>")
  ; (uu.noremap :n "[d" "<cmd>lua vim.diagnostic.goto_prev()<CR>")

  (print (.. "'" client.name "' server attached.")))

{: safe-require-server-config
 : capabilities
 : on-attach}
