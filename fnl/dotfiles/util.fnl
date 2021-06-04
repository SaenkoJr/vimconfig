(module dotfiles.util
  {require {nvim aniseed.nvim
            core aniseed.core}})

(defn noremap [mode from to ?options]
  "Sets a mapping with {:noremap true :silent true}."
  (nvim.set_keymap mode from to (core.merge
                                  {:noremap true :silent true}
                                  ?options)))

(defn bnoremap [bufnr mode from to ?options]
  (vim.api.nvim_buf_set_keymap bufnr mode from to (core.merge
                                                    {:noremap true :silent true}
                                                    ?options)))

(defn inoremap [from to ?options]
  "Sets a insert mapping with {:noremap true :silent true} by default."
  (nvim.set_keymap :i from to (core.merge
                                {:noremap true :silent true}
                                ?options)))

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
      :global (tset vim.o name value)
      :window (tset vim.wo name value)
      :buffer (nvim.set_option name value))))

(defn set-var [mode name value]
  "Set global or local vars
  Modes:
  - :g
  - :w
  - :b
  - :t
  - :v"
  (match mode
    :g (tset nvim.g name value)
    :v (tset nvim.v name value)
    :w (tset nvim.w 0 name value)
    :b (tset nvim.b 0 name value)
    :t (nvim.tabpage_set_var 0 name value)))

(defn expand [path]
  (nvim.fn.expand path))

(defn glob [path]
  (nvim.fn.glob path true true true))

(defn exists? [path]
  (= (nvim.fn.filereadable path) 1))

(defn lua-file [path]
  (nvim.ex.luafile path))

(def config-path (nvim.fn.stdpath "config"))
