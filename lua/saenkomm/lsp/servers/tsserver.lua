-- [nfnl] Compiled from fnl/saenkomm/lsp/servers/tsserver.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.lsp.servers.tsserver)
local function _1_(client, bufnr)
  __fnl_global__on_2dattach(client, bufnr)
  client.server_capabilities.document_formatting = true
  return nil
end
return defn(build, {__fnl_global__on_2dattach}, {cmd = {"typescript-language-server", "--stdio"}, filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.jsx", "*.js.erb"}, on_attach = _1_, capabilities = {textDocument = {completion = {completionItem = {snippetSupport = true}}}}})
