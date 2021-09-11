(module dotfiles.lsp.servers.solargraph)

(defn build [on-attach capabilities]
  {:cmd [:solargraph :stdio]
   :settings {:solargraph {:diagnostics true
                           :formatting false
                           :autoformat false}}
                           ; :commandPath "$HOME/.local/share/nvim/lsp_servers/solargraph/bin"}}
   :flags {:debounce_text_change 150}
   :capabilities capabilities
   :on_attach on-attach})
