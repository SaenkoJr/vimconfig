-- require 'lsp-config.completion'
require 'lsp-config.nvim-compe'
require 'lsp-config.diagnostic'
require 'lsp-config.snippets'

local lsp_config = require 'lspconfig'

local lsp = vim.lsp
local servers = {
  bash = 'bashls',
  css  = 'cssls',
  html = 'html',
  js   = 'tsserver',
  json = 'json',
  lua  = 'sumneko_lua',
  ruby = 'solargraph',
  efm  = 'efm'
}

-- handlers --
lsp.handlers['textDocument/codeAction']     = require('lsputil.codeAction').code_action_handler
lsp.handlers['textDocument/documentSymbol'] = require('lsputil.symbols').document_handler
lsp.handlers['textDocument/symbol']         = require('lsputil.symbols').workspace_handler
lsp.handlers['textDocument/declaration']    = require('lsputil.locations').declaration_handler
lsp.handlers['textDocument/definition']     = require('lsputil.locations').definition_handler
lsp.handlers['textDocument/implementation'] = require('lsputil.locations').implementation_handler
lsp.handlers['textDocument/references']     = require('lsputil.locations').references_handler
lsp.handlers['textDocument/typeDefinition'] = require('lsputil.locations').typeDefinition_handler

local on_attach = function(client, bufnr)
  -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  if client.resolved_capabilities.hover then
    bmap(bufnr, 'n', 'K',  ':Lspsaga hover_doc<cr>')
    bmap(bufnr, 'n', '<leader>K', ':Lspsaga signature_help<cr>')
    -- bmap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
    -- bmap(bufnr, 'n', '<leader>K', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
  end

  if client.resolved_capabilities.goto_definition then
    -- bmap(bufnr, 'n', 'gd', ':Lspsaga lsp_finder<cr>')
    bmap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
  end

  if client.resolved_capabilities.find_references then
    bmap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
  end

  if client.resolved_capabilities.rename then
    -- bmap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>')
    bmap(bufnr, 'n', '<leader>rn', ':Lspsaga rename<cr>')
  end

  if client.resolved_capabilities.code_action then
    bmap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    bmap(bufnr, 'v', '<leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')
  else
    print('Server has no code actions')
  end

  if client.resolved_capabilities.implementation then
    bmap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
  end

  if client.resolved_capabilities.type_definition then
    bmap(bufnr, 'n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
  end

  bmap(bufnr, 'n', 'gp', '<cmd>lua require"lspsaga.provider".preview_definition()<CR>')
  -- bmap(bufnr, 'n', '<leader>ca', ':Lspsaga code_action<cr>')
  -- bmap(bufnr, 'v', '<leader>ca', ":'<,'>Lspsaga range_code_action<cr>")

  if client.resolved_capabilities.document_formatting then
    bmap(bufnr, 'n', '<leader>fm', '<cmd>lua vim.lsp.buf.formatting()<cr>')
  elseif client.resolved_capabilities.document_range_formatting then
    bmap(bufnr, 'v', '<space>fm', '<cmd>lua vim.lsp.buf.range_formatting()<CR>')
  end

  map('n', '<leader>k', '<cmd>lua require"lspsaga.diagnostic".lsp_jump_diagnostic_prev()<CR>')
  map('n', '<leader>j', '<cmd>lua require"lspsaga.diagnostic".lsp_jump_diagnostic_next()<CR>')
  -- map('n', '<leader>k', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
  -- map('n', '<leader>j', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')

  print("'" .. client.name .. "' server attached.")
end

for lang, _ in pairs(servers) do
  require("lsp-config.servers." .. lang)(lsp_config, on_attach)
end

