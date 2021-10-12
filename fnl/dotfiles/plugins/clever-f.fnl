(module dotfiles.plugins.clever-f
  {require {util dotfiles.util}})

(util.noremap :n ";" "<Plug>(clever-f-repeat-forward)" {:noremap false})
