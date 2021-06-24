(module dotfiles.plugin.clever-f
  {require {util dotfiles.util}})

(util.noremap :n ";" "<Plug>(clever-f-repeat-forward)" {:noremap false})
