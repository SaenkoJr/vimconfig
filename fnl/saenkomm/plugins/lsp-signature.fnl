(module saenkomm.plugins.lsp-signature
  {require {lsp_signature lsp_signature}})

(lsp_signature.setup
  {:bind true
   :handler_opts {:border :rounded}
   :floating_window false
   :hint_enable true
   :hint_prefix ">> "})
