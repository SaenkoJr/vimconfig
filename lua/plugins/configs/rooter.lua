-- [nfnl] Compiled from fnl/plugins/configs/rooter.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("dotfiles.utils")
util["set-var"]("g", "rooter_silent_chdir", 1)
util["set-var"]("g", "rooter_change_directory_for_non_project_files", "current")
return util["set-var"]("g", "rooter_patterns", {".git", ".gitignore", "docker-compose.yml", "Gemfile", "Makefile", "package.json", "stack.yaml", "deps.edn"})
