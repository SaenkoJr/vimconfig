(module dotfiles.plugin.surrond
  {require {util dotfiles.util}})

(util.set-var :g :test#strategy {:file :basic
                                 :nearest :asyncrun
                                 :suite :basic})

(util.noremap :n :<leader>tn ":TestNearest<CR>")
(util.noremap :n :<leader>tf ":TestFile<CR>")
(util.noremap :n :<leader>ts ":TestSuite<CR>")
(util.noremap :n :<leader>tl ":TestLast<CR>")
(util.noremap :n :<leader>tv ":TestVisit<CR>")
