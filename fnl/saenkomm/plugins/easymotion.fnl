(module saenkomm.plugins.easymotion
  {require {nvim aniseed.nvim
            utils saenkomm.util}})

(utils.set-var :g :EasyMotion_do_mapping 0)

; (utils.noremap :n :<leader>e "<plug>(easymotion-prefix)" {:noremap false})
(utils.noremap :n :<leader>e "<plug>(easymotion-s)" {:noremap false})
(utils.noremap :n :<leader>. "<plug>(easymotion-repeat)" {:noremap false})
