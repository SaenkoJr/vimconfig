(module dotfiles.plugins.floaterm
  {require {util dotfiles.util}})

(util.set-var :g :floaterm_autoclose 0)
(util.set-var :g :floaterm_keymap_new "<F10>")
(util.set-var :g :floaterm_keymap_toggle "<M-\\>")
(util.set-var :g :floaterm_keymap_next :<F11>)
(util.set-var :g :floaterm_title "Shell $1/$2")
(util.set-var :g :floaterm_height 0.98)
(util.set-var :g :floaterm_width 0.98)
