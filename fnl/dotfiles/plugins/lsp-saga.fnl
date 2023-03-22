(module dotfiles.plugins.lsp-saga
  {require {saga lspsaga}})

(saga.setup
  {:symbol_in_winbar {:enable false}
   :lightbulb {:enable false}
   :disagnostic {:on_insert false}
   :ui {:border :rounded
        :code_action ""
        :colors {:title_bg ""}
        :title false}})
