-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/auto-pairs.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugin["auto-pairs"], {[require] = {[util] = saenkomm.util, [__fnl_global__nvim_2dautopairs] = __fnl_global__nvim_2dautopairs}})
util["set-var"]("g", "AutoPairs", {["("] = ")", ["["] = "]", ["{"] = "}", ["\""] = "\""})
util["set-var"]("g", "AutoPairsMapCh", 0)
__fnl_global__def_2d(__fnl_global__pairs_2dlist, {["*"] = {{"[", "]"}, {"{", "}"}, {"(", ")"}, {"\"", "\""}}, ruby = {{"'", "'"}, {"|", "|"}}, javascript = {{"'", "'"}}})
return __fnl_global__nvim_2dautopairs.setup({disable_filetyp = {"TelescopePrompt", "vim", "clojure", "fennel"}, map_c_h = true})
