return function(config, on_attach)
  local luaFormat = {
    formatCommand = "luafmt --stdin",
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
      'eruby',
    },
    settings = {
      languages = languages,
    },
    on_attach = on_attach
  }
end
