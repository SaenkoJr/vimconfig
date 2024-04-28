(local util (require :dotfiles.utils))

(util.noremap :n :ga "<Plug>(EasyAlign)" {:noremap false})
(util.noremap :x :ga "<Plug>(EasyAlign)" {:noremap false})
(util.noremap :x :GA "<Plug>(LiveEasyAlign)" {:noremap false})
