(module dotfiles.plugins.lsp-saga
  {require {saga lspsaga}})

(saga.init_lsp_saga
  {:border_style :rounded
   :diagnostic_header ["" "" "" ""]
   :code_action_icon ""
   :symbol_in_winbar {:enable false}})
