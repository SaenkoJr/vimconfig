(module saenkomm.lsp.servers.tsserver)

(defn build [on-attach]
  {:cmd ["typescript-language-server" "--stdio"]
   :filetypes [:javascript :javascriptreact :javascript.jsx
               :typescript :typescriptreact :typescript.jsx
               "*.js.erb"]
   :on_attach (fn [client bufnr]
                (on-attach client bufnr)
                (set client.server_capabilities.document_formatting true))
    :capabilities {:textDocument
                   {:completion
                    {:completionItem
                     {:snippetSupport true}}}}})
