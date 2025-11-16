(local lu (require :dotfiles.lsp.utils))

; (local wd (require :workspace-diagnostics))

; (fn build [on-attach]
;   {:cmd ["typescript-language-server" "--stdio"]
;    :filetypes [:javascript :javascriptreact :javascript.jsx
;                :typescript :typescriptreact :typescript.jsx
;                "*.js.erb"]
;    :single_file_support true
;    :on_attach (fn [client bufnr]
;                 (do
;                   (on-attach client bufnr)
;                   (set client.server_capabilities.document_formatting true)))
;                   ; (wd.populate_workspace_diagnostics client bufnr)))
;     :capabilities {:textDocument
;                    {:completion
;                     {:completionItem
;                      {:snippetSupport true}}}}})

(local config
  {:cmd ["typescript-language-server" "--stdio"]
   :filetypes [:javascript
               :javascriptreact
               :javascript.jsx
               :typescript
               :typescriptreact
               :typescript.jsx
               "*.js.erb"]
   :single_file_support true
   :on_attach (fn [client bufnr]
                (do
                  (lu.on-attach client bufnr)
                  (set client.server_capabilities.document_formatting true)))
                  ; (wd.populate_workspace_diagnostics client bufnr)))
    :capabilities {:textDocument
                   {:completion
                    {:completionItem
                     {:snippetSupport true}}}}})

{: config}
