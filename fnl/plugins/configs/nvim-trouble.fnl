(local wk (require :which-key))

(wk.register
  {:t {:name :+prefix
       :d ["<cmd>Trouble diagnostics toggle focus=true<cr>" "Open trouble diagnostics"]
       :D ["<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>" "Open buffer diagnostics (Trouble)"]}}
  {:prefix :<leader>})

(wk.register
  {:d {:name :+prefix
       :s ["<cmd>Trouble symbols toggle focus=true<cr>" "Open symbols (Trouble)"]}}
  {:prefix :<leader>})
