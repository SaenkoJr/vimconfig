(module dotfiles.plugins.lsp-saga
  {require {saga lspsaga}})

(saga.setup
  {:symbol_in_winbar {:enable false}
   :lightbulb {:enable false}
   :ui {:border :rounded
        :code_action ""
        :colors {:title_bg ""}}})
