(module utils
  {require {nvim aniseed.nvim}})

(defn noremap [mode from to]
  "Sets a mapping with {:noremap true :silent true}."
  (nvim.set_keymap mode from to {:noremap true :silent true}))

(defn nnoremap [from to]
  (nvim.set_keymap
    :n
    (.. "<leader>" from)
    (.. ":" to "<cr>")
    {:noremap true}))

(defn set_options [mode options]
  "Set global or local options
  Modes:
    - :global
    - :window
    - :buffer"
  (each [name value (pairs options)]
    (match mode
      :global (nvim.set_option name value)
      :window (nvim.win_set_option 0 name value)
      :buffer (nvim.buf_set_option 0 name value))))

(defn set_var [mode name value]
  "Set global or local vars
  Modes:
    - :g
    - :w
    - :b
    - :t
    - :v"
  (match mode
    :g (nvim.set_var name value)
    :v (nvim.set_vvar name value)
    :w (nvim.win_set_var 0 name value)
    :b (nvim.buf_set_var 0 name value)
    :t (nvim.tabpage_set_var 0 name value)))

