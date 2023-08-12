(module saenkomm.plugins.vim-jack-in
  {require {util saenkomm.util
            core aniseed.core
            fs aniseed.fs}})

(def- nREPL-conf-path "/home/maksim/.nrepl-port")

(let [f (io.open nREPL-conf-path)
      port (f:read)]
  (util.set-var :g :default_lein_task (.. "repl :start :port " port))
  (util.set-var :g :default_boot_task (.. "repl :start :port " port))
  (f:close))


