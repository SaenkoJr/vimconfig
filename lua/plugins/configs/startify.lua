-- [nfnl] Compiled from fnl/plugins/configs/startify.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("dotfiles.utils")
util["set-var"]("g", "ascii", {"\226\160\132\226\162\128\226\163\128\226\163\164\226\163\180\226\163\182\226\163\182\226\163\164\226\163\132\226\161\128\226\160\132\226\160\132\226\163\128\226\163\164\226\163\164\226\163\164\226\163\164\226\161\128\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132", "\226\163\180\226\163\143\226\163\185\226\163\191\226\160\191\226\160\191\226\160\191\226\160\191\226\162\191\226\163\191\226\163\132\226\162\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\139\226\163\183\226\161\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132", "\226\163\191\226\162\159\226\163\169\226\163\182\226\163\190\226\163\191\226\163\191\226\163\191\226\163\182\226\163\174\226\163\173\226\161\130\226\162\155\226\163\173\226\163\173\226\163\173\226\163\173\226\163\173\226\163\141\226\163\155\226\163\130\226\161\128\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132", "\226\163\191\226\163\191\226\163\191\226\163\191\226\161\191\226\162\159\226\163\171\226\163\173\226\163\183\226\163\182\226\163\190\226\163\173\226\163\188\226\161\187\226\162\155\226\163\155\226\163\173\226\163\173\226\163\182\226\163\182\226\163\172\226\163\173\226\163\133\226\161\128\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132", "\226\163\191\226\161\191\226\162\143\226\163\181\226\163\190\226\163\191\226\163\191\226\163\191\226\161\191\226\162\137\226\161\137\226\160\153\226\162\191\226\163\135\226\162\187\226\163\191\226\163\191\226\163\191\226\163\191\226\161\159\226\160\137\226\160\137\226\162\187\226\161\183\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132", "\226\163\191\226\163\183\226\163\190\226\163\141\226\163\155\226\162\191\226\163\191\226\163\191\226\163\191\226\163\164\226\163\129\226\163\164\226\163\191\226\162\143\226\160\184\226\163\191\226\163\191\226\163\191\226\163\191\226\163\183\226\163\172\226\163\165\226\163\190\226\160\129\226\163\191\226\163\191\226\163\183\226\160\132\226\160\132\226\160\132", "\226\163\191\226\163\191\226\163\191\226\163\191\226\163\173\226\163\149\226\163\146\226\160\191\226\160\173\226\160\173\226\160\173\226\161\183\226\162\150\226\163\171\226\163\182\226\163\182\226\163\172\226\163\173\226\163\173\226\163\173\226\163\173\226\163\165\226\161\182\226\162\163\226\163\191\226\163\191\226\163\191\226\160\132\226\160\132\226\160\132", "\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\161\191\226\163\159\226\163\155\226\163\173\226\163\190\226\163\191\226\163\191\226\163\191\226\163\157\226\161\155\226\163\191\226\162\159\226\163\155\226\163\155\226\163\129\226\163\128\226\163\184\226\163\191\226\163\191\226\163\191\226\163\128\226\163\128\226\163\128", "\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\162\184\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191", "\226\163\191\226\161\191\226\162\155\226\163\155\226\163\155\226\163\155\226\163\153\226\163\155\226\160\191\226\160\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\172\226\163\173\226\163\173\226\160\189\226\163\155\226\162\187\226\163\191\226\163\191\226\163\191\226\160\155\226\160\155\226\160\155", "\226\163\191\226\162\176\226\163\191\226\163\191\226\163\191\226\163\191\226\163\159\226\163\155\226\163\155\226\163\182\226\160\182\226\160\182\226\160\182\226\163\166\226\163\173\226\163\173\226\163\173\226\163\173\226\163\182\226\161\182\226\160\182\226\163\190\226\160\159\226\162\184\226\163\191\226\163\191\226\163\191\226\160\132\226\160\132\226\160\132", "\226\161\187\226\162\174\226\163\173\226\163\173\226\163\173\226\163\173\226\163\137\226\163\155\226\163\155\226\161\187\226\160\191\226\160\191\226\160\183\226\160\182\226\160\182\226\160\182\226\160\182\226\163\182\226\163\182\226\163\190\226\163\191\226\160\159\226\162\163\226\163\172\226\163\155\226\161\187\226\162\177\226\163\135\226\160\132\226\160\132", "\226\163\191\226\163\190\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\191\226\163\182\226\160\182\226\160\146\226\160\132\226\160\132\226\160\132\226\162\184\226\163\191\226\162\159\226\163\171\226\161\165\226\161\134\226\160\132\226\160\132", "\226\162\173\226\163\173\226\163\157\226\163\155\226\163\155\226\163\155\226\163\155\226\163\155\226\163\155\226\163\155\226\163\191\226\163\191\226\161\191\226\162\155\226\163\139\226\161\137\226\160\129\226\160\132\226\160\132\226\160\132\226\160\132\226\160\132\226\162\184\226\163\191\226\162\184\226\163\191\226\163\167\226\161\133\226\160\132\226\160\132", "\226\163\182\226\163\182\226\163\182\226\163\173\226\163\173\226\163\173\226\163\173\226\163\173\226\163\173\226\163\181\226\163\182\226\163\182\226\163\182\226\163\191\226\163\191\226\163\191\226\163\166\226\161\128\226\160\132\226\160\132\226\160\132\226\160\132\226\160\136\226\160\161\226\163\191\226\163\191\226\161\175\226\160\129\226\160\132\226\160\132"})
util["set-var"]("g", "startify_custom_header", "startify#pad(g:ascii)")
util["set-var"]("g", "startify_session_sort", 1)
util["set-var"]("g", "startify_session_persistence", 1)
util["set-var"]("g", "startify_session_dir", "$HOME/.vim/sessions")
util["set-var"]("g", "startify_fortune_use_unicode", 1)
util["set-var"]("g", "startify_change_to_dir", 0)
util["set-var"]("g", "startify_lists", {{type = "dir", header = {"   --------------------- \239\157\148 MRU [Current Dir] ---------------------"}}, {type = "files", header = {"   --------------------- \239\156\163 MRU ---------------------"}}, {type = "sessions", header = {"   --------------------- \239\154\144 Sessions ---------------------"}}, {type = "bookmarks", header = {"   --------------------- \239\128\174 Bookmarks ---------------------"}}, {type = "commands", header = {"   --------------------- \239\172\178 Commands ---------------------"}}})
util["set-var"]("g", "startify_commands", {{h = {"Check Vim health", ":checkhealth"}}, {r = {"Ranger", ":RnvimrToggle"}}, {g = {"Git status", ":G"}}, {u = {"Update Plugin", ":Lazy update"}}, {c = {"Clean Plugin", ":Lazy clean"}}, {s = {"Sync Plugin", ":Lazy sync"}}, {S = {"Start Time", ":StartupTime"}}, {l = {"Lazy", ":Lazy"}}, {m = {"Mason", ":Mason"}}})
util["set-var"]("g", "startify_bookmarks", {{n = "~/.config/nvim/init.lua"}, {t = "~/.tmux.conf"}, {z = "~/.zshrc"}, {d = "~/saenkomm"}})
return util.noremap("n", "<leader>SS", "<cmd>SSave!<cr>")
