(module saenkomm.lsp.servers.hls
  {require {util lspconfig.util}})

(defn build [on-attach capabilities]
  {:cmd [:haskell-language-server-wrapper :--lsp]
   :root_dir (util.root_pattern ".git" "*.cabal" "stack.yaml" "cabal.project" "package.yaml" "hie.yaml")
   :capabilities capabilities
   :on_attach on-attach})
