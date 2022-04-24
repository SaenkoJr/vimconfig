(module dotfiles.plugins.lsp-signature
  {require {lsp_signature lsp_signature}})

(lsp_signature.setup
  {:bind true
   :handler_opts {:border :ronded}
   :hint_enable true})
