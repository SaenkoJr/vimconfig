-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/tagalong.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.tagalong, {[require] = {[util] = saenkomm.util}})
return util["set-var"]("g", "tagalong_filetypes", {"html", "xml", "eruby", "ejs", "eco", "php:", "htmldjango", "js", "jsx", "tsx", "javascriptreact", "typescriptreact"})
