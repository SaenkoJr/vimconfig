-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/lsp-signature.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins["lsp-signature"], {[require] = {[lsp_signature] = lsp_signature}})
return lsp_signature.setup({bind = true, handler_opts = {border = "rounded"}, hint_enable = true, hint_prefix = ">> ", floating_window = false})
