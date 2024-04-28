-- [nfnl] Compiled from fnl/lsp/servers/yamlls.fnl by https://github.com/Olical/nfnl, do not edit.
local function build(on_attach, capabilities)
  return {capabilities = capabilities, on_attach = on_attach}
end
return {build = build}
