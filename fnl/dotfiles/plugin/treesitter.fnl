(module dotfiles.plugin.treesitter
  {require {utils dotfiles.utils}})

(utils.set_var :g :ranger_map_keys 0)
(utils.set_var :g :ranger_replace_netrw 1)

(utils.noremap :n :<c-n> ":Ranger<cr>")
(utils.noremap :n :<F12> ":RangerWorkingDirectory<cr>")
