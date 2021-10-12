(module dotfiles.plugins.limelight
  {require {util dotfiles.util}})

(util.set-var :g :limelight_default_coefficient 0.7)
(util.set-var :g :llimelight_conceal_ctermfg    238)

(util.noremap :n :gl ":Limelight!!<cr>")
