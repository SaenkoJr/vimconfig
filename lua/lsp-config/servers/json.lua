return function(config, on_attach)
  config.jsonls.setup {
    cmd = { 'json-languageserver', '--stdio' },
    on_attach = on_attach,
    filetypes = { 'json' },
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({}, { 0, 0 }, { vim.fn.line("$"), 0 })
        end
      }
    }
  }
end
