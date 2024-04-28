(module saenkomm.plugins.lsp-saga
  {require {saga lspsaga}})

(saga.setup
  {:symbol_in_winbar {:enable false}
   :lightbulb {:enable false}
   :diagnostic {:on_insert false}
   :beacon {:enable false}
   :ui {:border :rounded
        :code_action ""
        :colors {:title_bg ""}
        :title false}})
