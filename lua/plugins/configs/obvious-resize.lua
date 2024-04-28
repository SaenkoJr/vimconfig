-- [nfnl] Compiled from fnl/plugins/configs/obvious-resize.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("dotfiles.utils")
util.noremap("n", "<C-Up>", ":<C-U>ObviousResizeUp<cr>")
util.noremap("n", "<C-Down>", ":<C-U>ObviousResizeDown<cr>")
util.noremap("n", "<C-Left>", ":<C-U>ObviousResizeLeft<cr>")
return util.noremap("n", "<C-Right>", ":<C-U>ObviousResizeRight<cr>")
