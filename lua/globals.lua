local cmd, lsp, api = vim.cmd, vim.lsp, vim.api

function _G.map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  api.nvim_set_keymap(mode, lhs, rhs, options)
end

function _G.bmap(bufnr, mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, options)
end

function _G.au(event, filetype, action)
  vim.cmd('au' .. ' ' .. event .. ' ' .. filetype .. ' ' .. action)
end

function _G.reload_lsp()
  lsp.stop_client(lsp.get_active_clients())
  cmd [[edit]]
end

function _G.reload_config()
  local modules = { 'globals', 'settings', 'autocommands', 'mappings', 'plugins', 'lsp-config' }
  for _, moduleName in pairs(modules) do
    for packageName, _ in pairs(package.loaded) do
      if string.find(packageName, '^' .. moduleName) then
        package.loaded[packageName] = nil
      end
      require(moduleName)
    end
  end
  print('Modules reloaded')
end
