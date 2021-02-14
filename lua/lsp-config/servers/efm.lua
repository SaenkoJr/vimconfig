return function(config, on_attach)
  local luaFormat = {
    formatCommand = 'npx luafmt --stdin --indent-count 2',
    formatStdin = true
  }

  local eslint = {
    lintCommand        = 'eslint_d -f unix --stdin --stdin-filename ${INPUT}',
    lintStdin          = true,
    lintFormats        = { '%f:%l:%c: %m' },
    lintIgnoreExitCode = true,
    formatCommand      = 'eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}',
    formatStdin        = true
  }

  local languages = {
    lua             = { luaFormat },
    javascript      = { eslint },
    typescript      = { eslint },
    javascriptreact = { eslint },
    typescriptreact = { eslint },
  }

  config.efm.setup {
    cmd = { 'efm-langserver', '-logfile', '/tmp/efm.log' },
    root_dir = config.util.root_pattern(".git", vim.fn.getcwd()),
    log_level = vim.lsp.protocol.MessageType.Info,
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
      'ruby',
      'eruby',
    },
    settings = {
      languages = languages,
    },
    on_attach = on_attach
  }
end
