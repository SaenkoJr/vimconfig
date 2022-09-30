(module dotfiles.lsp.utils
  {require {util dotfiles.util
            nvim aniseed.nvim
            cmplsp cmp_nvim_lsp}})

(defn safe-require-server-config [name]
  (let [(ok? conf-or-err) (pcall require (.. "dotfiles.lsp.servers." name))]
    (if (not ok?)
      (print (.. "server config error: " conf-or-err))
      conf-or-err)))

(def capabilities
  (cmplsp.update_capabilities
    (vim.lsp.protocol.make_client_capabilities)))

(defn on-attach [client bufnr]
  (. (require :virtualtypes) :on_attach)
  ; (set nvim.b.omnifunc :lua.vim.lsp.omnifunc)

  (if client.resolved_capabilities.hover
    (do
      ; (util.bnoremap bufnr :n :K ":Lspsaga hover_doc<cr>")
      (util.bnoremap bufnr :n :K "<cmd>lua vim.lsp.buf.hover()<cr>")
      (util.bnoremap bufnr :n :<leader>K "<cmd>lua vim.lsp.buf.signature_help()<cr>")))

  (if client.resolved_capabilities.goto_definition
    ; (util.bnoremap bufnr :n :gd "<cmd>lua vim.lsp.buf.definition()<cr>")
    (util.bnoremap bufnr :n :gd "<cmd>Telescope lsp_definitions<cr>"))

  (if client.resolved_capabilities.find_references
    (util.bnoremap bufnr :n :gr "<cmd>lua vim.lsp.buf.references()<cr>"))

  (if client.resolved_capabilities.rename
    (do
      ; (util.bnoremap bufnr :n :<leader>rn "<cmd>lua vim.lsp.buf.rename()<cr>")
      (util.bnoremap bufnr :n :<leader>rn ":Lspsaga rename<cr>"))
    (print (.. "'" client.name "' does not support rename")))

  (if client.resolved_capabilities.code_action
    (do
      ; (util.bnoremap bufnr :n :<leader>ca "<cmd>lua vim.lsp.buf.code_action()<cr>")
      ; (util.bnoremap bufnr :v :<leader>ca "<cmd>lua vim.lsp.buf.range_code_action()<cr>"))
      (util.bnoremap bufnr :n :<leader>ca ":Lspsaga code_action<cr>")
      (util.bnoremap bufnr :v :<leader>ca ":<C-U>Lspsaga range_code_action<cr>"))
    (print "Server has no code actions"))

  (if client.resolved_capabilities.implementation
    (util.bnoremap bufnr :n :gi "<cmd>lua vim.lsp.buf.implementation()<cr>"))

  (if client.resolved_capabilities.type_definition
    (util.bnoremap bufnr :n :<leader>gt "<cmd>lua vim.lsp.buf.type_definition()<cr>"))

  (util.bnoremap bufnr :n :<leader>fm "<cmd>lua vim.lsp.buf.formatting()<cr>")
  (util.bnoremap bufnr :v :<leader>fm "<cmd>lua vim.lsp.buf.range_formatting()<CR>")

  (util.bnoremap bufnr :n :<leader>wa "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>")
  (util.bnoremap bufnr :n :<leader>wr "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>")

  (util.bnoremap bufnr :n :gp ":Lspsaga peek_definition<cr>")
  ; (util.noremap :n "]d" "<cmd>Lspsaga diagnostic_jump_next<cr>")
  ; (util.noremap :n "[d" "<cmd>Lspsaga diagnostic_jump_prev<cr>")
  (util.noremap :n "]d" "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
  (util.noremap :n "[d" "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")

  (print (.. "'" client.name "' server attached.")))

