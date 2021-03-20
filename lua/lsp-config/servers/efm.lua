return function(config, on_attach)
  local luaFormat = {
    formatCommand = 'npx luafmt --indent-count 2 --stdin',
    formatStdin = true
  }

  local eslint_d = {
    lintCommand        = 'eslint_d -f unix --stdin --stdin-filename ${INPUT}',
    lintStdin          = true,
    lintFormats        = { '%f:%l:%c: %m' },
    lintIgnoreExitCode = true,
    formatCommand      = 'eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}',
    formatStdin        = true
  }

  local languages = {
    lua             = { luaFormat },
    javascript      = { eslint_d },
    typescript      = { eslint_d },
    javascriptreact = { eslint_d },
    typescriptreact = { eslint_d },
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
      lintDebounce = 500,
    },
    on_attach = on_attach
  }
end
