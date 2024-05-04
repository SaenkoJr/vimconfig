-- [nfnl] Compiled from fnl/dotfiles/mappings.fnl by https://github.com/Olical/nfnl, do not edit.
local nvim = require("aniseed.nvim")
local utils = require("dotfiles.utils")
nvim.g.mapleader = " "
nvim.g.maplocalleader = ","
utils.noremap("i", "jj", "<esc>")
utils.noremap("t", "<c-o>", "<c-\\><c-n>")
utils.noremap("n", "ZA", "zA")
utils.noremap("n", "<localleader>q", ":q<cr>")
utils.noremap("n", "<localleader>Q", ":Bdelete<cr>")
utils.noremap("n", "<localleader>w", ":w!<cr>")
utils.noremap("n", "<localleader>W", ":w!<cr>:e %<cr>")
utils.noremap("n", "<leader><leader>", "<c-^>")
utils.noremap("n", "<leader>ll", ":bnext<cr>")
utils.noremap("n", "<leader>hh", ":bprev<cr>")
utils.noremap("n", "<c-w><c-o>", ":Bonly<cr>")
utils.noremap("n", "<c-h>", "<c-w>h")
utils.noremap("n", "<c-j>", "<c-w>j")
utils.noremap("n", "<c-k>", "<c-w>k")
utils.noremap("n", "<c-l>", "<c-w>l")
utils.noremap("n", "=G", ":normal! gg=G``<CR>")
utils.noremap("n", "<leader>/", ":noh<cr>")
utils.noremap("n", "c", "\"_c")
utils.noremap("x", "c", "\"_c")
utils.noremap("n", "C", "\"_C")
utils.noremap("n", "<leader>P", "\"0P")
utils.noremap("x", "<leader>P", "\"0P")
vim.api.nvim_create_user_command("Format", ":%!jq .", {})
return vim.api.nvim_create_user_command("Unformat", ":%!jq -c .", {})
