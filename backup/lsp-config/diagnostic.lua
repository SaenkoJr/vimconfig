vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    update_in_insert = true,
  }
)

vim.cmd(
  [[
    function! SetLSPHighlights()
      " -- Hint
      hi LspDiagnosticsDefaultTextHint        guifg='Red' guibg='none'
      hi LspDiagnosticsSignTextHint           guifg='Red' guibg='none'
      hi LspDiagnosticsVirtualTextHint        guifg='Red' guibg='none'
      hi LspDiagnosticsFloatingTextHint       guifg='Red' guibg='none'

      " -- Info
      hi LspDiagnosticsDefaultInformation     guifg='#1f5fd2' guibg='none'
      hi LspDiagnosticsSignInformation        guifg='#1f5fd2' guibg='none'
      hi LspDiagnosticsVirtualTextInformation guifg='#1f5fd2' guibg='none'
      hi LspDiagnosticsFloatingInformation    guifg='#1f5fd2' guibg='none'

      " -- Warning
      hi LspDiagnosticsDefaultWarning         guifg='#d9cf50' guibg='none'
      hi LspDiagnosticsSignWarning            guifg='#d9cf50' guibg='none'
      hi LspDiagnosticsVirtualTextWarning     guifg='#d9cf50' guibg='none'
      hi LspDiagnosticsFloatingWarning        guifg='#d9cf50' guibg='none'

      " -- Error
      hi LspDiagnosticsDefaultError           guifg='#e84444' guibg='none'
      hi LspDiagnosticsSignError              guifg='#e84444' guibg='none'
      hi LspDiagnosticsVirtualTextError       guifg='#e84444' guibg='none'
      hi LspDiagnosticsFloatingError          guifg='#e84444' guibg='none'
    endfunction

    autocmd ColorScheme * call SetLSPHighlights()
  ]]
)
