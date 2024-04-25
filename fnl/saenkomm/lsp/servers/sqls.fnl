(module saenkomm.lsp.servers.sqls
  {require {util lspconfig.util}})

(defn build [on-attach capabilities]
  {:filetypes [:sql]
   :root_dir (util.root_pattern "*-query-*" "*.sql" ".git")
   :capabilities capabilities
   :on_attach on-attach})
