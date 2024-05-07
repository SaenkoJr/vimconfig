-- [nfnl] Compiled from fnl/dotfiles/lsp/utils.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
local cmplsp = require("cmp_nvim_lsp")
local function safe_require_server_config(name)
  local ok_3f, conf_or_err = pcall(require, ("dotfiles.lsp.servers." .. name))
  if not ok_3f then
    return print(("lsp config error: " .. conf_or_err))
  else
    return conf_or_err
  end
end
local capabilities = cmplsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
local function on_attach(client, bufnr)
  do local _ = (require("virtualtypes")).on_attach end
  uu.bnoremap(bufnr, "n", "K", ":Lspsaga hover_doc<cr>")
  uu.bnoremap(bufnr, "n", "<leader>K", "<cmd>lua vim.lsp.buf.signature_help()<cr>")
  uu.bnoremap(bufnr, "n", "gd", "<cmd>Telescope lsp_definitions<cr>")
  uu.bnoremap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")
  uu.bnoremap(bufnr, "n", "<leader>rn", ":Lspsaga rename<cr>")
  uu.bnoremap(bufnr, "n", "<leader>ca", ":Lspsaga code_action<cr>")
  uu.bnoremap(bufnr, "v", "<leader>ca", ":Lspsaga range_code_action<cr>")
  uu.bnoremap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")
  uu.bnoremap(bufnr, "n", "<leader>gt", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
  uu.bnoremap(bufnr, "n", "<leader>fm", "<cmd>lua require('conform').format({ async = true })<cr>")
  uu.bnoremap(bufnr, "n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>")
  uu.bnoremap(bufnr, "n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>")
  uu.bnoremap(bufnr, "n", "gp", ":Lspsaga peek_definition<cr>")
  uu.noremap("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<cr>")
  uu.noremap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>")
  uu.noremap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
  return print(("'" .. client.name .. "' server attached."))
end
return {["safe-require-server-config"] = safe_require_server_config, capabilities = capabilities, ["on-attach"] = on_attach}
