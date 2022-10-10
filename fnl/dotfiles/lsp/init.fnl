(module dotfiles.lsp.init
  {require {lu dotfiles.lsp.utils
            core aniseed.core
            lspconfig lspconfig
            mason mason
            mason-lspconfig mason-lspconfig}})

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

(mason.setup {})
(mason-lspconfig.setup
  {:ensure_installed [:solargraph :tsserver :sumneko_lua :clojure_lsp]})

; (let [servers (lsp-installer.get_installed_servers)]
;   (each [_ server (ipairs servers)]
;     (let [conf-builder (lu.safe-require-server-config (. server :name))
;           lsp (. lspconfig (. server :name))]
;       (lsp.setup (conf-builder.build lu.on-attach lu.capabilities)))))
