(module dotfiles.plugin.lsp-saga
  {require {saga lspsaga}})

(saga.init_lsp_saga {:border_style :round
                     :use_saga_diagnostic_sign true
                     :code_action_icon "🛈 "})
