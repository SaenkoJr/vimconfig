-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/emmet.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.emmet, {[require] = {[util] = saenkomm.util, [nvim] = aniseed.nvim}})
util["set-var"]("g", "user_emmet_mode", "i")
util["set-var"]("g", "user_emmet_leader_key", "<c-e>")
util["set-var"]("g", "user_emmet_install_global", 0)
return nvim.ex.autocmd("FileType", "html,xhtml,css,scss,erb,eruby,html.erb,javascript.jsx,jsx", "EmmetInstall")
