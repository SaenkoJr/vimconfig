local cmd, lsp, api = vim.cmd, vim.lsp, vim.api

function _G.map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  api.nvim_set_keymap(mode, lhs, rhs, options)
end

function _G.reload_lsp()
  lsp.stop_client(lsp.get_active_clients())
  cmd [[edit]]
end

function _G.au(event, filetype, action)
  vim.cmd('au' .. ' ' .. event .. ' ' .. filetype .. ' ' .. action)
end
