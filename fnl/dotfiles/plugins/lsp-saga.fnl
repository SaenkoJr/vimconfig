(module dotfiles.plugins.lsp-saga
  {require {saga lspsaga}})

; (saga.init_lsp_saga {:border_style :round
;                      :use_saga_diagnostic_sign true
;                      :diagnostic_header_icon ""
;                      :error_sign :E
;                      :warn_sign :W
;                      :infor_sign :I
;                      :diagnostic_prefix_format "%d. "
;                      :diagnostic_message_format "%m %c"
;                      :code_action_icon ""
;                      :code_action_prompt {:virtual_text false
;                                           :sign false}
;                      :rename_action_keys {:quit "<esc>"}})

(saga.init_lsp_saga
  {:border_style :rounded
   :diagnostic_header ["" "" "" ""]
   :show_diagnostic_source true
   :code_action_icon ""})
