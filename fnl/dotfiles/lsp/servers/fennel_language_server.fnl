(local util (require :lspconfig.util))

(fn build [on-attach capabilities]
  {:filetypes [:fennel]
   :init_options {:hover {:clojuredocs true
                          :hide-file-location? true}}
   :root_dir (util.root_pattern "*.fnl" ".git")
   :capabilities capabilities
   :on_attach on-attach
   :settings {:fennel
              {:diagnostics
               {:globals [:vim]}}}})

{: build}
