-- [nfnl] Compiled from fnl/plugins/configs/matchup.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("dotfiles.utils")
local nvim = require("aniseed.nvim")
nvim.ex.autocmd("FileType", "clojure,racket,fennel", "let  b:matchup_enabled=0")
util["set-var"]("g", "matchup_mouse_enabled", 0)
return util["set-var"]("g", "matchup_matchparen_offscreen", {method = "popup"})
