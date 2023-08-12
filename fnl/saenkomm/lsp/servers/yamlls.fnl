(module saenkomm.lsp.servers.yamlls)

(defn build [on-attach capabilities]
  {:capabilities capabilities
   :on_attach on-attach})
