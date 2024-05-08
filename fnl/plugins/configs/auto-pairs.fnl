(local npairs (require :nvim-autopairs))
(local rule (require :nvim-autopairs.rule))

(npairs.setup
  {:disable_filetyp [:TelescopePrompt :vim :clojure :fennel]
   :map_c_h true
   :map_c_w true
   :disable_in_macro true})

(npairs.add_rules [(rule "|" "|" "ruby")])
(npairs.add_rules [(rule "<%" "%>" "eruby")])
