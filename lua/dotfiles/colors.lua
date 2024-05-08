-- [nfnl] Compiled from fnl/dotfiles/colors.fnl by https://github.com/Olical/nfnl, do not edit.
local nvim = require("aniseed.nvim")
local fts_syntax_on = {"startify", "git", "fugitive", "slim", "nginx", "j2", "checkhealth", "floaterm", "eruby", "zsh", "conf", "text"}
nvim.ex.syntax("manual")
nvim.ex.autocmd("FileType", table.concat(fts_syntax_on, ","), "set syntax=on")
return nvim.ex.colorscheme("ayu-dark")
