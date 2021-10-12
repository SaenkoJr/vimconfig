(module dotfiles.plugins.vim-jack-in
  {require {util dotfiles.util}})

(util.set-var :g :default_lein_task "repl :start :port 42425")
(util.set-var :g :default_boot_task "repl :start :port 42425")

