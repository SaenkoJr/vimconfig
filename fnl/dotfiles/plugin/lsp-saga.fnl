(module dotfiles.plugin.lsp-saga
  {require {saga lspsaga}})

(saga.init_lsp_saga {:border_style 2
                     :use_saga_diagnostic_sign true
                     :code_action_icon "🛈 "})
