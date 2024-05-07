-- [nfnl] Compiled from fnl/dotfiles/colors.fnl by https://github.com/Olical/nfnl, do not edit.
local nvim = require("aniseed.nvim")
local core = require("aniseed.core")
local ayu = require("ayu")
nvim.ex.syntax("manual")
nvim.ex.autocmd("FileType", "startify,git,fugitive,slim,nginx,j2,checkhealth,floaterm,eruby", "set syntax=on")
return nvim.ex.colorscheme("ayu-dark")
