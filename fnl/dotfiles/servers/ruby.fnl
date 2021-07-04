(module dotfiles.servers.ruby)

(defn setup [config on-attach]
  (config.solargraph.setup
    {:cmd [:solargraph :stdio]
     :settings {:solargraph {:diagnostics false
                             :formatting false}}
     :flags {:debounce_text_change 150}
     :root_dir (config.util.root_pattern "Gemfile" ".git" "*.rb")
     :on_attach on-attach}))
