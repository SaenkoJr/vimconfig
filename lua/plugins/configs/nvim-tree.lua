-- [nfnl] Compiled from fnl/plugins/configs/nvim-tree.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
local nvim_tree = require("nvim-tree")
nvim_tree.setup({reload_on_bufenter = true, sync_root_with_cwd = true, git = {enable = false}, filters = {dotfiles = true}, renderer = {indent_markers = {enable = true}, icons = {show = {git = false}}, highlight_opened_files = "name"}, update_focused_file = {update_cwd = true, ignore_list = {"help"}, enable = false}, view = {width = 45}, disable_netrw = false, hijack_netrw = false, hijack_cursor = false})
return uu.noremap("n", "<F12>", ":NvimTreeToggle<CR>")
