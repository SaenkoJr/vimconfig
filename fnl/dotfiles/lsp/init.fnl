(local lu (require :dotfiles.lsp.utils))
(local lspconfig (require :lspconfig))
(local mason (require :mason))
(local mason-lspconfig (require :mason-lspconfig))
(local null-ls (require :null-ls))
(local mason-null-ls (require :mason-null-ls))

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

(mason.setup {:PATH :append})
(mason-lspconfig.setup
  {:ensure_installed [:solargraph :tsserver :lua_ls :clojure_lsp :fennel_language_server]})

(null-ls.setup
  {:diagnostics_format "[#{c}] #{m} (#{s})"
   :sources [null-ls.builtins.diagnostics.clj_kondo
             null-ls.builtins.formatting.lua_format
             null-ls.builtins.formatting.fnlfmt]})

(mason-null-ls.setup
  {:ensure_installed [:rubocop :eslint_d :luacheck]})

; (let [servers (mason-lspconfig.get_installed_servers)])
(let [servers ["hls" "clojure_lsp" "solargraph" "lua_ls" "tsserver" "sqls" "fennel_language_server"]]
  (each [_ server-name (ipairs servers)]
    (let [server (lu.safe-require-server-config server-name)
          lsp (. lspconfig server-name)]
      (lsp.setup (server.build lu.on-attach lu.capabilities)))))
