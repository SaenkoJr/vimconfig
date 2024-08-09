(local nvim (require :aniseed.nvim))
(local wk (require :which-key))

(tset nvim.o :timeout true)
(tset nvim.o :timeoutlen 600)

(wk.setup
  {:delay (fn [] (. nvim :o :timeoutlen))
   :notify false
   :preset :modern
   :icons {:keys {:Tab :TAB
                  :CR :ENTER
                  :Space :SPACE}
           :colors true}})
