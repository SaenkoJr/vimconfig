(module dotfiles.servers.ruby)

(defn setup [config on-attach]
  (config.solargraph.setup
    {:settings {:solargraph {:diagnostics true}}
     :on_attach on-attach}))
