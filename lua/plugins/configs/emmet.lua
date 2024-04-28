-- [nfnl] Compiled from fnl/plugins/configs/emmet.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("dotfiles.utils")
local nvim = require("aniseed.nvim")
util["set-var"]("g", "user_emmet_mode", "i")
util["set-var"]("g", "user_emmet_leader_key", "<c-e>")
util["set-var"]("g", "user_emmet_install_global", 0)
return nvim.ex.autocmd("FileType", "html,xhtml,css,scss,erb,eruby,html.erb,javascript.jsx,jsx", "EmmetInstall")
