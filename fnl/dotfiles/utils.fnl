(local nvim (require :aniseed.nvim))
(local core (require :aniseed.core))
(local fun (require :dotfiles.vendor.fun))

(fn noremap [mode from to ?options]
  "Sets a mapping with {:noremap true :silent true}."
  (nvim.set_keymap mode from to (core.merge
                                  {:noremap true :silent true}
                                  ?options)))

(fn bnoremap [bufnr mode from to ?options]
  (nvim.buf_set_keymap bufnr mode from to (core.merge
                                            {:noremap true :silent true}
                                            ?options)))

(fn inoremap [from to ?options]
  "Sets a insert mapping with {:noremap true :silent true} by default."
  (nvim.set_keymap :i from to (core.merge
                                {:noremap true :silent true}
                                ?options)))

(fn nvim-sets [opts]
  (each [_ opt (ipairs opts)]
    (nvim.ex.set opt)))

(fn set-options [options]
  (each [name value (pairs options)]
    (nvim.set_option_value name value {})))

(fn set-var [mode name value]
  "Set global or local vars."
  (match mode
    :g (tset nvim.g name value)
    :v (tset nvim.v name value)
    :w (tset nvim.w 0 name value)
    :b (tset nvim.b 0 name value)
    :t (nvim.tabpage_set_var 0 name value)))

(fn expand [path]
  (nvim.fn.expand path))

(fn glob [path]
  (nvim.fn.glob path true true true))

(fn exists? [path]
  (= (nvim.fn.filereadable path) 1))

(fn lua-file [path]
  (nvim.ex.luafile path))

(local config-path (nvim.fn.stdpath "config"))

(fn last [xs]
  (fun.nth (fun.length xs) xs))

(fn tx [...]
  "Slightly nicer syntax for things like defining dependencies.
  Anything that relies on the {1 :foo :bar true} syntax can use this."
  (let [args [...]
        len (fun.length args)]
    (if (= :table (type (last args)))
      (fun.reduce
        (fn [acc n v]
          (tset acc n v)
          acc)
        (last args)
        (fun.zip (fun.range 1 len) (fun.take (- len 1) args)))
      args)))

(fn safe-require-plugin-config [name]
  (let [(ok? val-or-err) (pcall require (.. :plugins.configs. name))]
    (when (not ok?)
      (print (.. "config error: " val-or-err)))))

(fn lc [name]
  (fn []
    (safe-require-plugin-config name)))

{: noremap
 : bnoremap
 : inoremap
 : nvim-sets
 : set-options
 : set-var
 : expand
 : glob
 : exists?
 : lua-file
 : config-path
 : tx
 : lc}
