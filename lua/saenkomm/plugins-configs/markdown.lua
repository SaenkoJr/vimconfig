-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/markdown.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.markdown, {[require] = {[util] = saenkomm.util}})
util["set-var"]("g", "mkdp_browser", "google-chrome-stable")
return util["set-var"]("g", "mkdp_auto_close", 0)
