(module dotfiles.plugin.conjure
  {require {util dotfiles.util}})

(util.set-var :g :conjure#client#fennel#aniseed#aniseed_module_prefix "aniseed.")
(util.set-var :g :conjure#eval#result_register "*")
(util.set-var :g :conjure#log#botright true)

(util.set-var :g :conjure#log#hud#height 0.7)
