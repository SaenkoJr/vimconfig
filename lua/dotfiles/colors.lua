-- [nfnl] fnl/dotfiles/colors.fnl
local core = require("aniseed.core")
local nvim = require("aniseed.nvim")
local fts_syntax_on = {"startify", "git", "fugitive", "slim", "nginx", "j2", "checkhealth", "floaterm", "eruby", "zsh", "conf", "text", "toml"}
nvim.ex.syntax("manual")
nvim.ex.autocmd("FileType", table.concat(fts_syntax_on, ","), "set syntax=on")
nvim.ex.colorscheme("ayu-dark")
return core["assoc-in"](nvim, {"o", "background"}, "dark")
