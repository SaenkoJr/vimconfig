-- [nfnl] Compiled from fnl/plugins/configs/markdown.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("dotfiles.utils")
util["set-var"]("g", "mkdp_browser", "google-chrome-stable")
return util["set-var"]("g", "mkdp_auto_close", 0)
