(local supermaven (require :supermaven-nvim))

(supermaven.setup
  {:disable_inline_completion false
   :keymaps {:accept_suggestion "<C-]>"
             :clear_suggestion "<C-e>"}})
