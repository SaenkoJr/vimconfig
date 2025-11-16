(local lu (require :dotfiles.lsp.utils))

(local config
  {:settings
   {:python {:analysis {:autoSearchPaths true
                        :dianosticMode :openFilesOnly
                        :useLibraryCodeForTypes true}}}
   :on_attach lu.on-attach})

{: config}
