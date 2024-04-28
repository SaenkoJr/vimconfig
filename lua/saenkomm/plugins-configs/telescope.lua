-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/telescope.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.telescope, {[require] = {[util] = saenkomm.util, [core] = aniseed.core, [telescope] = telescope, [actions] = telescope.actions, [builtin] = telescope.builtin}})
__fnl_global__def_2d(__fnl_global__vimgrep_2dopts, {"rg", "--color=never", "--no-heading", "--with-filename", "--line-number", "--column", "--smart-case", "--only-matching", "-w", "--hidden"})
telescope.setup({defaults = {layout_config = {width = 0.95, height = 0.95, prompt_position = "bottom"}, prompt_prefix = ">> ", initial_mode = "normal", vimgrep_arguments = __fnl_global__vimgrep_2dopts, file_ignore_patterns = {"node_modules", ".git", "^log/", "%.log", "^storage/", "%.lock", "^tmp/", "%.keep", "%.key"}, mappings = {i = {["<C-k>"] = actions.move_selection_previous, ["<C-j>"] = actions.move_selection_next, ["<C-i>"] = actions.toggle_selection, ["<C-s>"] = actions.cycle_previewers_next, ["<C-a>"] = actions.cycle_previewers_prev, ["<C-u>"] = false}, n = {q = actions.close}}}, pickers = {buffers = {theme = "dropdown", layout_config = {width = 0.75, height = 0.55, prompt_position = "top"}, path_display = {truncate = 5}, mappings = {n = {["<c-d>"] = actions.delete_buffer, q = actions.close}}}, diagnostics = {theme = "dropdown", layout_config = {width = 0.75, height = 0.55, prompt_position = "top"}, path_display = {truncate = 5}, mappings = {n = {q = actions.close}}}}, extensions = {fzf = {fuzzy = true, override_file_sorter = true, override_generic_sorter = true, case_mode = "smart_case"}, ["ui-select"] = {theme = "dropdown", layout_config = {width = 0.75, height = 0.55, prompt_position = "top"}, mappings = {n = {q = actions.close}}}}})
telescope.load_extension("fzf")
telescope.load_extension("ui-select")
telescope.load_extension("harpoon")
util.noremap("n", "<F1>", "<cmd>Telescope help_tags<cr>")
util.noremap("n", "<leader>ob", "<cmd>Telescope buffers<cr>")
util.noremap("n", "<leader>td", "<cmd>Telescope diagnostics<cr>")
util.noremap("n", "<leader>fn", "<cmd>Telescope grep_string<cr>")
util.noremap("v", "<leader>fn", "<cmd>Telescope grep_string<cr>")
util.noremap("n", "<leader>ds", "<cmd>Telescope lsp_document_symbols<cr>")
return util.noremap("n", "<leader>lg", "<cmd>Telescope live_grep<cr>")
