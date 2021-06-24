(module dotfiles.servers.js
  {require {core aniseed.core}})

(defn setup [config on-attach]
  (config.tsserver.setup
    {:cmd ["typescript-language-server" "--stdio"]
     :filetypes [:javascript :javascriptreact :javascript.jsx
                 :typescript :typescriptreact :typescript.jsx
                 "*.js.erb"]
     :root_dir (config.util.root_pattern "package.json" "tsconfig.json" "jsconfig.json" ".git" (vim.fn.getcwd))
     :on_attach (fn [client bufnr]
                  (on-attach client bufnr)
                  (set client.resolved_capabilities.document_formatting true))
      :capabilities {:textDocument
                     {:completion
                      {:completionItem
                       {:snippetSupport true}}}}}))
