(module dotfiles.lsp.init
  {require {util dotfiles.util
            lu dotfiles.lsp.utils
            nvim aniseed.nvim
            core aniseed.core
            lsp-installer nvim-lsp-installer}})

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
        {:virtual_text {:prefix "⯀"}}))

(def- servers [:ruby :efm :lua :js])

(core.keys (require :dotfiles.lsp.servers.solargraph))

(lsp-installer.on_server_ready
  (fn [server]
    (let [config (lu.safe-require-server-config (. server :name))]
      (server:setup
        (config.build lu.on-attach lu.capabilities))
      (vim.cmd "do User LspAttachBuffers"))))
