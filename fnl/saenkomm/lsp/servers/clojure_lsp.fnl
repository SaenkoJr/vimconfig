(module saenkomm.lsp.servers.clojure_lsp
  {require {util lspconfig.util}})

(defn build [on-attach capabilities]
  {:capabilities capabilities
   :cmd [:clojure-lsp]
   :filetypes [:clojure :clj :edn]
   :init_options {:hover {:clojuredocs true
                          :hide-file-location? true}}
   :root_dir (util.root_pattern "project.clj" ".git" "*.clj" "deps.edn")
   :on_attach on-attach})
