(module dotfiles.plugins.lsp-saga
  {require {saga lspsaga}})

(saga.init_lsp_saga {:border_style :round
                     :use_saga_diagnostic_sign true
                     :error_sign :E
                     :warn_sign :W
                     :infor_sign :I
                     :code_action_icon "*"
                     :code_action_prompt {:virtual_text false
                                          :sign false}})
