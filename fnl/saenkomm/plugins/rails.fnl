(module saenkomm.plugins.rails
  {require {util saenkomm.util}})

(util.noremap :n "]r" ":RE<cr>")
(util.noremap :n "]a" ":AE<cr>")
(util.noremap :n "]R" ":RV<cr>")
(util.noremap :n "]A" ":AV<cr>")

(util.set-var :g :ragtag_global_maps 1)
