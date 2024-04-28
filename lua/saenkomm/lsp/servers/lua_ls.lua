-- [nfnl] Compiled from fnl/saenkomm/lsp/servers/lua_ls.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.lsp.servers.lua_ls)
def(sumneko_root_path, (os.getenv("HOME") .. "/binaries/lua-language-server"))
def(sumneko_bin, (sumneko_root_path .. "/bin/Linux/lua-language-server"))
return defn(build, {__fnl_global__on_2dattach, capabilities}, {cmd = {sumneko_bin, "-E", (sumneko_root_path .. "/main.lua")}, settings = {Lua = {runtime = {version = "LuaJIT"}, diagnostics = {globals = {"vim", "use", "map", "bmap"}}, telemetry = {enable = false}, workspace = {library = {[vim.fn.expand("$VIMRUNTIME/lua")] = true, [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true}}}}, capabilities = capabilities, on_attach = __fnl_global__on_2dattach})
