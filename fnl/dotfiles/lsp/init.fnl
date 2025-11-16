(local lu (require :dotfiles.lsp.utils))
(local lspconfig (require :lspconfig))
(local mason (require :mason))
(local mason-lspconfig (require :mason-lspconfig))
(local lint (require :lint))
(local lint-parser (require :lint.parser))

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

(local servers [:clojure_lsp :ruby_lsp :lua_ls
                :ts_ls :sqls :fennel_language_server
                :tailwindcss :rust_analyzer :pylsp :pyright :elixirls])
; (local linters [:eslint_d :prettier])

(mason.setup
  {:PATH :append
   :log_level vim.log.levels.INFO
   :max_concurrent_installers 4
   :registries ["github:mason-org/mason-registry"]
   :providers ["mason.providers.registry-api" "mason.providers.client"]
   :ui {:border :rounded
        :height 0.7}})
(mason-lspconfig.setup
  {:ensure_installed servers
   :automatic_enable false})

(vim.diagnostic.config {:virtual_text true
                        :float {:border :rounded}})
(vim.lsp.config :* {:on_attach lu.on-attach
                    :capabilities lu.capabilities})

(local servers-configs-names [:ruby_lsp :pyright :ts_ls])
(each [_ server-name (ipairs servers-configs-names)]
  (let [server-config (lu.safe-require-server-config server-name)]
    (do
      (vim.lsp.enable server-name)
      (vim.lsp.config server-name server-config.config))))

(tset lint :linters_by_ft
  {:javascript [:eslint_d]
   :typescript [:eslint_d]
   :javascriptreact [:eslint_d]
   :typescriptreact [:eslint_d]
   :python []
   :ruby [:rubocop]})

(vim.api.nvim_create_autocmd
  [:BufWritePost :BufEnter :InsertLeave]
  {:callback (fn [] (lint.try_lint))})
