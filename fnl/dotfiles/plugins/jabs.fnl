(module dotfiles.plugins.jabs
  {require {util dotfiles.util
            jabs jabs}})

(def- ui (. (vim.api.nvim_list_uis) 1))

(jabs.setup
  {:border :rounded
   :width 75
   :height 30})

(util.noremap :n :<leader>ob ":JABSOpen<cr>")
