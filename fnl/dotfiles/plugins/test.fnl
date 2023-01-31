(module dotfiles.plugins.test
  {require {c aniseed.core
            util dotfiles.util}})

(util.set-var :g :test#strategy {:file :basic
                                 :nearest :floaterm
                                 :suite :basic})
(util.set-var :g :ultest_virtual_text 1)
(util.set-var :g :ultest_output_on_line 0)
(util.set-var :g :ultest_output_rows 100)
(util.set-var :g :ultest_disable_grouping ["ruby#rails"])

(util.noremap :n :<leader>TN ":UltestNearest<CR>")
(util.noremap :n :<leader>TS ":UltestSummary<CR>")
(util.noremap :n :<leader>to ":UltestOutput<CR>")
(util.noremap :n :<leader>tf ":TestFile<cr>")
(util.noremap :n :<leader>tn ":TestNearest<cr>")
(util.noremap :n :<leader>tl ":TestLast<cr>")
(util.noremap :n :<leader>tv ":TestVisit<CR>")

(util.noremap :n "[t" "<Plug>(ultest-prev-fail)" {:noremap false})
(util.noremap :n "]t" "<Plug>(ultest-next-fail)" {:noremap false})

(defn docker_transform [cmd]
  ; (if (= 1 (vim.fn.filereadable "./docker-compose.yml"))
  ;   (.. "docker-compose run --rm web " cmd)
    cmd)

(util.set-var :g "test#custom_transformations" {:docker docker_transform})
(util.set-var :g "test#transformation" :docker)
