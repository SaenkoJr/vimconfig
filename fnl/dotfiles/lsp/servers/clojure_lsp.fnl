(module dotfiles.lsp.servers.clojure_lsp
  {require {util lspconfig.util}})

(defn build [on-attach capabilities]
  {:capabilities capabilities
   :cmd [:clojure-lsp]
   :filetypes [:clojure :clj :edn]
   :root_dir (util.root_pattern "project.clj" ".git" "*.clj" "deps.end")
   :on_attach on-attach})
