-- [nfnl] Compiled from fnl/plugins/configs/clever-f.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("dotfiles.utils")
return util.noremap("n", ";", "<Plug>(clever-f-repeat-forward)", {noremap = false})
