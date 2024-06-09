-- [nfnl] Compiled from fnl/plugins/configs/fzf.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
local string = require("aniseed.string")
local nvim = require("aniseed.nvim")
local rg_opts = {"--column", "--line-number", "--no-heading", "--no-ignore-vcs", "--fixed-strings", "--smart-case", "--hidden", "--follow", "-g \"!yarn.lock\"", "-g \"!.git\"", "-g \"!node_modules\"", "-g \"!log\"", "-- "}
local rg = ("rg" .. " " .. string.join(" ", rg_opts))
nvim.ex.command_("-bang -nargs=* Rg call fzf#vim#grep('", rg, "'.shellescape(<q-args>), 1,", "<bang>0 ? fzf#vim#with_preview(\"up:75%\") : fzf#vim#with_preview(\"right:50%\", \"?\"), <bang>0)")
uu["set-var"]("g", "fzf_layout", {window = {width = 0.9, height = 0.9}})
uu["set-var"]("g", "fzf_preview_window", {"right:50%", "ctrl-/"})
uu.noremap("n", "<leader>FN", ":Rg <c-r><c-w><cr>")
uu.noremap("n", "<leader>LG", "<cmd>Rg<cr>")
uu.noremap("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
return uu.noremap("n", "<leader>FF", "<cmd>Files ~<cr>")
