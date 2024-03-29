(module dotfiles.util
  {require {nvim aniseed.nvim
            core aniseed.core}})

(defn noremap [mode from to ?options]
  "Sets a mapping with {:noremap true :silent true}."
  (nvim.set_keymap mode from to (core.merge
                                  {:noremap true :silent true}
                                  ?options)))

(defn bnoremap [bufnr mode from to ?options]
  (nvim.buf_set_keymap bufnr mode from to (core.merge
                                            {:noremap true :silent true}
                                            ?options)))

(defn inoremap [from to ?options]
  "Sets a insert mapping with {:noremap true :silent true} by default."
  (nvim.set_keymap :i from to (core.merge
                                {:noremap true :silent true}
                                ?options)))

(defn nvim-sets [opts]
  (each [_ opt (ipairs opts)]
    (nvim.ex.set opt)))

(defn set-options [options]
  (each [name value (pairs options)]
    (nvim.set_option_value name value {})))

(defn set-var [mode name value]
  "Set global or local vars."
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
