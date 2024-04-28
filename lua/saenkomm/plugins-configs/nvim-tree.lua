-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/nvim-tree.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins["nvim-tree"], {[require] = {[__fnl_global__nvim_2dtree] = __fnl_global__nvim_2dtree, [util] = saenkomm.util}})
__fnl_global__nvim_2dtree.setup({reload_on_bufenter = true, sync_root_with_cwd = true, git = {enable = false}, filters = {dotfiles = true}, renderer = {indent_markers = {enable = true}, icons = {show = {git = false}}, highlight_opened_files = "name"}, update_focused_file = {update_cwd = true, ignore_list = {"help"}, enable = false}, view = {width = 45}, disable_netrw = false, hijack_netrw = false, hijack_cursor = false})
return util.noremap("n", "<F12>", ":NvimTreeToggle<CR>")
