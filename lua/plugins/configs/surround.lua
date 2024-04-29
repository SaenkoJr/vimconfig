-- [nfnl] Compiled from fnl/plugins/configs/surround.fnl by https://github.com/Olical/nfnl, do not edit.
local msurround = require("mini.surround")
local util = require("dotfiles.utils")
util["set-var"]("g", "surround_no_insert_mappings", 1)
return msurround.setup({mappings = {add = "gsa", delete = "gsd", find = "gsf", find_left = "gsF", highlight = "gsh", replace = "gcs", update_n_lines = "gsn"}, silent = true})
