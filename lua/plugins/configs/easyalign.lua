-- [nfnl] Compiled from fnl/plugins/configs/easyalign.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("dotfiles.utils")
util.noremap("n", "ga", "<Plug>(EasyAlign)", {noremap = false})
util.noremap("x", "ga", "<Plug>(EasyAlign)", {noremap = false})
return util.noremap("x", "GA", "<Plug>(LiveEasyAlign)", {noremap = false})
