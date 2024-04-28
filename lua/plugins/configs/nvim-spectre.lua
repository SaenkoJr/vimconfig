-- [nfnl] Compiled from fnl/plugins/configs/nvim-spectre.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
local spectre = require("spectre")
spectre.setup({open_cmd = "vnew", live_update = true})
uu.noremap("n", "<leader>SP", ":lua require('spectre').open()<cr>")
uu.noremap("n", "<leader>sw", ":lua require('spectre').open_visual({select_word=true})<cr>")
return uu.noremap("n", "<leader>sf", "viw:lua require('spectre').open_file_search()<cr>")
