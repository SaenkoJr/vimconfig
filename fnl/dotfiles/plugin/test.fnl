(module dotfiles.plugin.surrond
  {require {util dotfiles.util}})

(util.set-var :g :test#strategy {:file :basic
                                 :nearest :floaterm
                                 :suite :basic})
(util.set-var :g :ultest_virtual_text 1)
(util.set-var :g :ultest_output_on_line 0)
(util.set-var :g :ultest_output_rows 100)
(util.set-var :g :ultest_disable_grouping ["ruby#rails"])

(util.noremap :n :<leader>tf ":Ultest<CR>")
(util.noremap :n :<leader>tn ":UltestNearest<CR>")
(util.noremap :n :<leader>ts ":UltestSummary<CR>")
(util.noremap :n :<leader>to ":UltestOutput<CR>")
(util.noremap :n :<leader>TF ":TestFile<cr>")
(util.noremap :n :<leader>tl ":TestLast<cr>")
(util.noremap :n :<leader>tv ":TestVisit<CR>")

(util.noremap :n "[t" "<Plug>(ultest-prev-fail)" {:noremap false})
(util.noremap :n "]t" "<Plug>(ultest-next-fail)" {:noremap false})
