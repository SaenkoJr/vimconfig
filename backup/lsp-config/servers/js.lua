return function(config, on_attach)
  config.tsserver.setup {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = {
      'javascript',
      'javascriptreact',
      'javascript.jsx',
      'typescript',
      'typescriptreact',
      'typescript.tsx',
      '*.js.erb',
    },
    root_dir = config.util.root_pattern('package.json', 'tsconfig.json', 'jsconfig.json', '.git', vim.fn.getcwd()),
    on_attach = function(client, bufnr)
      on_attach(client, bufnr)
      client.resolved_capabilities.document_formatting = false
    end,
    capabilities = {
      textDocument = {
        completion= {
          completionItem = {
            snippetSupport = true
          }
        }
      }
    }
  }
end
