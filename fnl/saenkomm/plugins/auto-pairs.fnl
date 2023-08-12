(module saenkomm.plugin.auto-pairs
  {require {util saenkomm.util
            nvim-autopairs nvim-autopairs}})

(util.set-var
  :g
  :AutoPairs
  {"(" ")"
   "[" "]"
   "{" "}"
   "\"" "\""})
(util.set-var :g :AutoPairsMapCh 0)

(def- pairs-list
  {:* [["[" "]"]
       ["{" "}"]
       ["(" ")"]
       ["\"" "\""]]
   :ruby [["'" "'"]
          ["|" "|"]]
   :javascript [["'" "'"]]})

; (pairs:setup
;   {:pairs pairs-list
;    :autojump_strategy {:unbalanced :right}
;    :enter {:enable_mapping false}
;    :indent {:* 1
;             :ruby 1
;             :fennel 0
;             :clojure 0}})

(nvim-autopairs.setup
  {:disable_filetyp [:TelescopePrompt :vim :clojure :fennel]
   :map_c_h true})
