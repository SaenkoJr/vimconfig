(module dotfiles.lsp.servers.solargraph
  {require {util lspconfig.util}})

(defn build [on-attach capabilities]
  {:cmd [:solargraph :stdio]
   :root_dir (util.root_pattern "Gemfile" ".git" "*.rb")
   :settings {:solargraph {:diagnostics false
                           :formatting true
                           :autoformat false}}
   :flags {:debounce_text_change 150}
   :capabilities capabilities
   :on_attach on-attach})
