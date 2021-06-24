(module dotfiles.plugin.easymotion
  {require {nvim aniseed.nvim
            utils dotfiles.util}})

(utils.set-var :g :EasyMotion_do_mapping 0)

(utils.noremap :n :<leader>e "<plug>(easymotion-prefix)" {:noremap false})
(utils.noremap :n :<leader>s "<plug>(easymotion-s)" {:noremap false})
(utils.noremap :n :<leader>. "<plug>(easymotion-repeat)" {:noremap false})
