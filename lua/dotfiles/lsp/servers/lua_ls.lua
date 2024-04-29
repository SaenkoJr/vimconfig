-- [nfnl] Compiled from fnl/dotfiles/lsp/servers/lua_ls.fnl by https://github.com/Olical/nfnl, do not edit.
local function build(on_attach, capabilities)
  return {settings = {Lua = {runtime = {version = "LuaJIT"}, diagnostics = {globals = {"vim", "use", "map", "bmap"}}, telemetry = {enable = false}, workspace = {library = {[vim.fn.expand("$VIMRUNTIME/lua")] = true, [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true}}}}, capabilities = capabilities, on_attach = on_attach}
end
return {build = build}
