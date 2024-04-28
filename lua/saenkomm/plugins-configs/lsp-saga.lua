-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/lsp-saga.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins["lsp-saga"], {[require] = {[saga] = lspsaga}})
return saga.setup({symbol_in_winbar = {enable = false}, lightbulb = {enable = false}, diagnostic = {on_insert = false}, beacon = {enable = false}, ui = {border = "rounded", code_action = "", colors = {title_bg = ""}, title = false}})
