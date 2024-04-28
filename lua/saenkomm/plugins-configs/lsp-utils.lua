-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/lsp-utils.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins["lsp-utils"], {[require] = {[util] = saenkomm.util}})
return util["set-var"]("g", "lsp_utils_location_opts", {height = 30, mode = "editor", list = {border = true}, preview = {border = true}})
