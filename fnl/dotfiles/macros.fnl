(local nvim (require :aniseed.nvim))

;; [nfnl-macro]
(fn augrp [name ...]
  `(do
     (nvim.ex.augroup ,(tostring name))
     (nvim.ex.autocmd_)
     ,(list `do ...)
     (nvim.ex.augroup :END)))

{: augrp}
