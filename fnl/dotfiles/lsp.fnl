(module dotfiles.lsp
  {require {util dotfiles.util
            core aniseed.core
            nvim aniseed.nvim
            lsp-config lspconfig}})

(let [code-action (require "lsputil.codeAction")
      symbols (require "lsputil.symbols")
      locations (require "lsputil.locations")]
  (tset vim.lsp.handlers :textDocument/codeAction     code-action.code_action_handler)
  (tset vim.lsp.handlers :textDocument/documentSymbol symbols.document_handler)
  (tset vim.lsp.handlers :textDocument/symbol         symbols.workspace_handler)
  (tset vim.lsp.handlers :textDocument/symbol         symbols.workspace_handler)
  (tset vim.lsp.handlers :textDocument/declaration    locations.declaration_handler)
  (tset vim.lsp.handlers :textDocument/definition     locations.definition_handler)
  (tset vim.lsp.handlers :textDocument/implementation locations.implementation_handler)
  (tset vim.lsp.handlers :textDocument/references     locations.references_handler)
  (tset vim.lsp.handlers :textDocument/typeDefinition locations.typeDefinition_handler))

(defn on-attach [client bufnr]
  (set nvim.b.omnifunc :lua.vim.lsp.omnifunc)

  (if client.resolved_capabilities.hover
    (do
      (util.bnoremap bufnr :n :K ":Lspsaga hover_doc<cr>")
      (util.bnoremap bufnr :n :<leader>K ":Lspsaga signature_help<cr>")))
      ; (util.bnoremap bufnr :n :K "<cmd>lua vim.lsp.buf.hover()<cr>")
      ; (util.bnoremap bufnr :n :<leader>K "<cmd>lua vim.lsp.buf.signature_help()<cr>")

  (if client.resolved_capabilities.goto_definition
    (util.bnoremap bufnr :n :gd "<cmd>lua vim.lsp.buf.definition()<cr>"))
      ; (util.bnoremap :n bufnr :gd ":Lspsaga lsp_finder<cr>")

  (if client.resolved_capabilities.find_references
    (util.bnoremap bufnr :n :gr "<cmd>lua vim.lsp.buf.references()<cr>"))

  (if client.resolved_capabilities.rename
    (do
      (util.bnoremap bufnr :n :<leader>rn "<cmd>lua vim.lsp.buf.rename()<cr>"))
      ; (util.bnoremap bufnr :n :<leader>rn ":Lspsaga rename<cr>"))
    (print (.. "'" client.name "' does not support rename")))

  (if client.resolved_capabilities.code_action
    (do
      (util.bnoremap bufnr :n :<leader>ca "<cmd>lua vim.lsp.buf.code_action()<cr>")
      (util.bnoremap bufnr :v :<leader>ca "<cmd>lua vim.lsp.buf.range_code_action()<cr>"))
      ; (util.bnoremap bufnr :n :<leader>ca ":Lspsaga code_action<cr>")
      ; (util.bnoremap bufnr :v :<leader>ca ":<C-U>Lspsaga range_code_action<cr>"))
    (print "Server has no code actions"))

  (if client.resolved_capabilities.implementation
    (util.bnoremap bufnr :n :gi "<cmd>lua vim.lsp.buf.implementation()<cr>"))

  (if client.resolved_capabilities.type_definition
    (util.bnoremap bufnr :n :<leader>gt "<cmd>lua vim.lsp.buf.type_definition()<cr>"))

  (util.bnoremap bufnr :n :<leader>fm "<cmd>lua vim.lsp.buf.formatting()<cr>")
  (util.bnoremap bufnr :v :<leader>fm "<cmd>lua vim.lsp.buf.range_formatting()<CR>")

  (util.bnoremap bufnr :n :gp ":Lspsaga preview_definition<cr>")
  (util.noremap :n "]d" ":Lspsaga diagnostic_jump_next<cr>")
  (util.noremap :n "[d" ":Lspsaga diagnostic_jump_prev<cr>")
  ; (util.noremap :n "]d" "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
  ; (util.noremap :n "[d" "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")

  (print (.. "'" client.name "' server attached.")))

(defn require-server [name]
  (require (.. "dotfiles.servers." name)))

(def servers [:ruby :efm :lua :js])
(each [_ server (ipairs (core.map require-server servers))]
  (server.setup lsp-config on-attach))

