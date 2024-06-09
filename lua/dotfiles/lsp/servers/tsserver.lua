-- [nfnl] Compiled from fnl/dotfiles/lsp/servers/tsserver.fnl by https://github.com/Olical/nfnl, do not edit.
local function build(on_attach)
  local function _1_(client, bufnr)
    on_attach(client, bufnr)
    client.server_capabilities.document_formatting = true
    return nil
  end
  return {cmd = {"typescript-language-server", "--stdio"}, filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.jsx", "*.js.erb"}, single_file_support = true, on_attach = _1_, capabilities = {textDocument = {completion = {completionItem = {snippetSupport = true}}}}}
end
return {build = build}
