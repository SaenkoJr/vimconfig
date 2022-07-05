(module dotfiles.plugins.jabs
  {require {util dotfiles.util
            jabs jabs}})

(def- ui (. (vim.api.nvim_list_uis) 1))

(jabs.setup
  {:border :rounded
   :position :center
   :width 95
   :height 18
   :preview {:border :single}
   :col 0
   :row (/ ui.height 2)})

(util.noremap :n :<leader>ob ":JABSOpen<cr>")
