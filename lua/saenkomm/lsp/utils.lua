-- [nfnl] Compiled from fnl/saenkomm/lsp/utils.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.lsp.utils, {[require] = {[util] = saenkomm.util, [nvim] = aniseed.nvim, [cmplsp] = cmp_nvim_lsp}})
local function _1_(client)
  return (client.name == "null-ls")
end
__fnl_global__defn_2d(lsp_formating, {bufnr}, vim.lsp.format({filter = _1_, bufnr = bufnr}))
local function _2_(...)
  local ok_3f, conf_or_err = pcall(require, ("saenkomm.lsp.servers." .. name))
  if not ok_3f then
    return print(("server config error: " .. conf_or_err))
  else
    return conf_or_err
  end
end
defn(__fnl_global__safe_2drequire_2dserver_2dconfig, {name}, _2_(...))
def(capabilities, cmplsp.default_capabilities(vim.lsp.protocol.make_client_capabilities()))
return defn(__fnl_global__on_2dattach, {client, bufnr}, (require("virtualtypes")).on_attach, util.bnoremap(bufnr, "n", "K", ":Lspsaga hover_doc<cr>"), util.bnoremap(bufnr, "n", "<leader>K", "<cmd>lua vim.lsp.buf.signature_help()<cr>"), util.bnoremap(bufnr, "n", "gd", "<cmd>Telescope lsp_definitions<cr>"), util.bnoremap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>"), util.bnoremap(bufnr, "n", "<leader>rn", ":Lspsaga rename<cr>"), util.bnoremap(bufnr, "n", "<leader>ca", ":Lspsaga code_action<cr>"), util.bnoremap(bufnr, "v", "<leader>ca", ":Lspsaga range_code_action<cr>"), util.bnoremap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>"), util.bnoremap(bufnr, "n", "<leader>gt", "<cmd>lua vim.lsp.buf.type_definition()<cr>"), util.bnoremap(bufnr, "n", "<leader>fm", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>"), util.bnoremap(bufnr, "n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>"), util.bnoremap(bufnr, "n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>"), util.bnoremap(bufnr, "n", "gp", ":Lspsaga peek_definition<cr>"), util.noremap("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<cr>"), util.noremap("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<cr>"), util.noremap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<cr>"), print(("'" .. client.name .. "' server attached.")))
