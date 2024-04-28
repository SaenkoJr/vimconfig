-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/indentline.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.indentline, {[require] = {[util] = saenkomm.util, ibl = ibl}})
util["set-var"]("g", "vim_json_syntax_conceal", 0)
util["set-var"]("g", "vim_json_syntax_conceal", 0)
do end (vim.opt)["list"] = true
return ibl.setup({exclude = {filetypes = {"fennel", "javascript", "startify"}}})
