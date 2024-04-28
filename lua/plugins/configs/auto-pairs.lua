-- [nfnl] Compiled from fnl/plugins/configs/auto-pairs.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("dotfiles.utils")
local nvim_autopairs = require("nvim-autopairs")
util["set-var"]("g", "AutoPairs", {["("] = ")", ["["] = "]", ["{"] = "}", ["\""] = "\""})
util["set-var"]("g", "AutoPairsMapCh", 0)
local pairs_list = {["*"] = {{"[", "]"}, {"{", "}"}, {"(", ")"}, {"\"", "\""}}, ruby = {{"'", "'"}, {"|", "|"}}, javascript = {{"'", "'"}}}
return nvim_autopairs.setup({disable_filetyp = {"TelescopePrompt", "vim", "clojure", "fennel"}, map_c_h = true})
