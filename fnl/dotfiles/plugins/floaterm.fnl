(module dotfiles.plugins.floaterm
  {require {util dotfiles.util}})

(util.set-var :g :floaterm_keymap_new "<F10>")
(util.set-var :g :floaterm_keymap_toggle "<c-\\>")
(util.set-var :g :floaterm_keymap_next :<F11>)
(util.set-var :g :floaterm_title "Shell $1/$2")
(util.set-var :g :floaterm_height 0.9)
(util.set-var :g :floaterm_width 0.9)
