(local trouble (require :trouble))
(local wk (require :which-key))

(trouble.setup
  {:focus true
   :auto_preview false
   :win {:size {:width 45
                :height 15}}
   :preview {:type :split}
   :modes {:diagnostics
           {:filter {:not {:ft :*-log}}}}})

(wk.register
  {:t {:name :+prefix
       :d ["<cmd>Trouble diagnostics toggle<cr>" "Open trouble diagnostics"]
       :D ["<cmd>Trouble diagnostics toggle filter.buf=0<cr>" "Open buffer diagnostics (Trouble)"]}}
  {:prefix :<leader>})

(wk.register
  {:d {:name :+prefix
       :s ["<cmd>Trouble symbols toggle focus=true<cr>" "Open symbols (Trouble)"]}}
  {:prefix :<leader>})
