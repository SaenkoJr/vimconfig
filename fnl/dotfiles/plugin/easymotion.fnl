(module dotfiles.plugin.easymotion
  {require {nvim aniseed.nvim
            utils dotfiles.utils}})

(nvim.ex.command_
  "-bang -nargs=* Rg call fzf#vim#grep('"
  "rg --column --line-number --no-heading --color=always --fixed-strings --smart-case --hidden --follow -g '!yarn.lock' -g '!.git' -g '!node_modules' -- "
  "'.shellescape(<q-args>), 1, <bang>0 ? fzf#vim#with_preview('up:65%') : fzf#vim#with_preview('right:50%:hidden', '?'), <bang>0)")

(utils.set_var :g :EasyMotion_do_mapping 0)

(utils.noremap :n :<leader>e "<plug>(easymotion-prefix)" {:noremap false})
(utils.noremap :n :<leader>s "<plug>(easymotion-s)" {:noremap false})
(utils.noremap :n :<leader>. "<plug>(easymotion-repeat)" {:noremap false})
