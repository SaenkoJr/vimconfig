(local lu (require :dotfiles.lsp.utils))
(local lspconfig (require :lspconfig))
(local mason (require :mason))
(local mason-lspconfig (require :mason-lspconfig))
(local lint (require :lint))
(local lint-parser (require :lint.parser))
(local core (require :aniseed.core))

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
                :tsserver :sqls :fennel_language_server
                :tailwindcss])
; (local linters [:eslint_d :prettier])

(vim.diagnostic.config {:float {:border :rounded}})

(mason.setup
  {:PATH :append
   :ui {:border :rounded
        :height 0.7}})
(mason-lspconfig.setup
  {:ensure_installed servers})

(let [servers servers]
  (each [_ server-name (ipairs servers)]
    (let [server (lu.safe-require-server-config server-name)
          lsp (. lspconfig server-name)]
      (lsp.setup (server.build lu.on-attach lu.capabilities)))))

(tset lint.linters :slim-lint {:cmd :slim-lint
                               :stdin true
                               :ignore_exitcode true
                               :stream :stdout
                               :args ["-r" "emacs" "--stdin-file-path" (fn [] (vim.api.nvim_buf_get_name 0))]
                               :parser (lint-parser.from_errorformat "%f:%l:%c: %m" {:source :slim-lint
                                                                                     :severity vim.diagnostic.severity.WARN})})

(tset lint :linters_by_ft
  {:javascript [:eslint_d]
   :slim [:slim-lint]
   :ruby [:rubocop]})

(vim.api.nvim_create_autocmd
  [:BufWritePost :BufEnter :InsertLeave]
  {:callback (fn [] (lint.try_lint))})
