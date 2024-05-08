(local util (require :dotfiles.utils))
(local neotest (require :neotest))
(local rspec-adapter (require :neotest-rspec))

(fn rspec-cmd []
  (if (= 1 (vim.fn.filereadable "./docker-compose.yml"))
    (vim.tbl_flatten [:docker :compose :run :--rm :-w :/usr/app :web :bundle :exec :rspec])
    (vim.tbl_flatten [:bundle :exec :rspec])))

(fn rspec-path [path]
  (if (= 1 (vim.fn.filereadable "./docker-compose.yml"))
    (let [prefix (rspec-adapter.root path)]
      (string.sub path (+ (string.len prefix) 2) -1))
    path))

(neotest.setup
  {:adapters [(rspec-adapter {:rspec_cmd rspec-cmd
                              :transform_spec_path rspec-path
                              :results_path "tmp/rspec.output"})]
   :floating {:max_height 0.7
              :max_width 0.9}})

(util.noremap :n :<leader>ts ":Neotest summary<cr>")
(util.noremap :n :<leader>to ":Neotest output<cr>")
(util.noremap :n :<leader>tf ":Neotest run file<cr>")
(util.noremap :n :<leader>tn ":Neotest run<cr>")
(util.noremap :n :<leader>tl ":Neotest run last<cr>")
(util.noremap :n :<leader>ta ":Neotest attach<cr>")

; (util.noremap :n "[t" "<Plug>(ultest-prev-fail)" {:noremap false})
; (util.noremap :n "]t" "<Plug>(ultest-next-fail)" {:noremap false})
