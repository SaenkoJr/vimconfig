-- [nfnl] Compiled from fnl/plugins/configs/better-whitespace.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("dotfiles.utils")
util["set-var"]("g", "better_whitespace_enabled", 1)
util["set-var"]("g", "strip_whitespace_on_save", 0)
util["set-var"]("g", "strip_whitespace_confirm", 0)
util["set-var"]("g", "strip_only_modified_lines", 1)
util["set-var"]("g", "better_whitespace_filetypes_blacklist", {"diff", "gitcommit", "unite", "qf", "help", "markdown", "dbout", "terminal", "dashboard", "*.log"})
util["set-var"]("g", "better_whitespace_operator", "_s")
return util["set-var"]("g", "current_line_whitespace_disabled_soft", 1)
