(module dotfiles.plugins.jabs
  {require {util dotfiles.util
            jabs jabs}})

(def- ui (. (vim.api.nvim_list_uis) 1))

(jabs.setup
  {:border :rounded
   :position :corner
   :width 75
   :height 30
   :preview {:border :single}})

(util.noremap :n :<leader>ob ":JABSOpen<cr>")
