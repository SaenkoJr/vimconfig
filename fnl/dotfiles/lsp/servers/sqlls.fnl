(local util (require :lspconfig.util))

(fn build [on-attach capabilities]
  {:cmd [:sql-language-server :up :--method :stdio]
   :filetypes [:sql]
   :root_dir (util.root_pattern "*-query-*" "*.sql" ".git")
   :capabilities capabilities
   :on_attach on-attach})

{: build}
