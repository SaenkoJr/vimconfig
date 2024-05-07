(local lu (require :dotfiles.lsp.utils))
(local lspconfig (require :lspconfig))
(local mason (require :mason))
(local mason-lspconfig (require :mason-lspconfig))

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

(tset vim.lsp.handlers
      :textDocument/publishDiagnostics
      (vim.lsp.with
        vim.lsp.diagnostic.on_publish_diagnostics
        {:virtual_text {:prefix "■"}}))

(local servers [:clojure_lsp :solargraph :lua_ls
                :tsserver :sqls :fennel_language_server
                :tailwindcss])

(mason.setup {:PATH :append})
(mason-lspconfig.setup
  {:ensure_installed servers})

(let [servers servers]
  (each [_ server-name (ipairs servers)]
    (let [server (lu.safe-require-server-config server-name)
          lsp (. lspconfig server-name)]
      (lsp.setup (server.build lu.on-attach lu.capabilities)))))
