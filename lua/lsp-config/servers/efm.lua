return function(config, on_attach)
  local luaFormat = {
    formatCommand = "npx luafmt --stdin --indent-count 2",
    formatStdin = true
  }
  local languages = {
    lua = { luaFormat }
  }
  config.efm.setup {
    root_dir = config.util.root_pattern(".git", vim.fn.getcwd()),
    init_options = {
      documentFormatting = true,
      codeAction = true
    },
    filetypes = {
      'javascript',
      'typescript',
      'typescriptreact',
      'javascriptreact',
      'lua',
      'css',
      'html',
      -- 'ruby',
      'eruby',
    },
    settings = {
      languages = languages,
    },
    on_attach = on_attach
  }
end
