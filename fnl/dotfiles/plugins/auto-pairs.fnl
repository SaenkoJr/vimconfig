(module dotfiles.plugin.auto-pairs
  {require {util dotfiles.util}})

(util.set-var
  :g
  :AutoPairs
  {"(" ")"
   "[" "]"
   "{" "}"})
