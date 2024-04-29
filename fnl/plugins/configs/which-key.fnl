(local nvim (require :aniseed.nvim))
(local wk (require :which-key))

(tset nvim.o :timeout true)
(tset nvim.o :timeoutlen 600)

(wk.setup
  {:mode [:n :v]})
