(module dotfiles.plugin.ranger
  {require {utils dotfiles.util}})

(utils.set-var :g :ranger_map_keys 0)
(utils.set-var :g :ranger_replace_netrw 1)

(utils.noremap :n :<c-n> ":Ranger<cr>")
(utils.noremap :n :<F12> ":RangerWorkingDirectory<cr>")
