(module dotfiles.servers.ruby)

(defn setup [config on-attach]
  (config.solargraph.setup
    {:settings {:solargraph {:diagnostics true}}
     :root_dir (config.util.root_pattern "Gemfile" ".git" "*.rb" (vim.fn.getcwd))
     :on_attach on-attach}))
