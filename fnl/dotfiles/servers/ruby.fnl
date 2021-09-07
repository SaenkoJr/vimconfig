(module dotfiles.servers.ruby)

(defn setup [config on-attach capabilities]
  (config.solargraph.setup
    {:cmd [:solargraph :stdio]
     :settings {:solargraph {:diagnostics true
                             :formatting false
                             :autoformat false}}
     :flags {:debounce_text_change 150}
     :root_dir (config.util.root_pattern "Gemfile" ".git" "*.rb")
     :capabilities capabilities
     :on_attach on-attach}))
