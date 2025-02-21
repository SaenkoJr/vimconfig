(local supermaven (require :supermaven-nvim))

(supermaven.setup
  {:disable_inline_completion false
   :keymaps {:accept_suggestion "<C-]>"
             :accept_word "<C-y>"
             :clear_suggestion "<C-e>"}})
