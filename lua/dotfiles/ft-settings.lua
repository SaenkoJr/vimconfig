-- [nfnl] Compiled from fnl/dotfiles/ft-settings.fnl by https://github.com/Olical/nfnl, do not edit.
local nvim = require("aniseed.nvim")
local utils = require("dotfiles.utils")
local core = require("aniseed.core")
nvim.ex.autocmd("BufNewFile", "BufRead", "*.slim", "set ft=slim")
do end (vim.g)["rust_recommended_style"] = "0"
nvim.ex.autocmd("FileType", "sicp", "set filetype=racket")
nvim.ex.autocmd("FileType", "fennel,clojure", "lua vim.opt.listchars:append({ lead = \"\226\139\133\" })")
nvim.ex.autocmd("FileType", "eruby.yaml", "set foldmethod=indent")
nvim.ex.autocmd("FileType", "fennel", "set foldmethod=indent")
nvim.ex.autocmd("FileType", "packer,orgagenda", "setlocal cursorline")
nvim.ex.autocmd("BufWinEnter", "conjure-log-*,*.log", "lua vim.diagnostic.disable()")
vim.filetype.add({extension = {env = "sh"}, pattern = {["%.env%.[%w.-]+"] = "sh"}})
return vim.filetype.add({extension = {j2 = "sh"}, pattern = {["*.j2"] = "sh"}})
