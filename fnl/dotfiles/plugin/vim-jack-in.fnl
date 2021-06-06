(module dotfiles.plugin.vim-jack-in
  {require {util dotfiles.util}})

(util.set-var :g :default_lein_task "repl :start :port 42322")
(util.set-var :g :default_boot_task "repl :start :port 42322")

