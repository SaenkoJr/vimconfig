(module dotfiles.plugin.obvious-resize
  {require {util dotfiles.util}})

(util.noremap :n :<C-Up>    ":<C-U>ObviousResizeUp<cr>")
(util.noremap :n :<C-Down>  ":<C-U>ObviousResizeDown<cr>")
(util.noremap :n :<C-Left>  ":<C-U>ObviousResizeLeft<cr>")
(util.noremap :n :<C-Right> ":<C-U>ObviousResizeRight<cr>")
