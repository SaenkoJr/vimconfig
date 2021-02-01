-- map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
-- map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
-- map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
-- map('n', '<leader>k', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
-- map('n', '<leader>j', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')

map('i', '<C-space>', '<Plug>(completion_trigger)', { noremap = false })
map('i', '<C-k>', 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', {expr = true})
map('i', '<C-j>', 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', {expr = true})

-- saga
map('n', 'gd', ':LspSagaFinder<cr>')
map('n', 'gs', "<cmd>lua require('lspsaga.signaturehelp').signature_help()<cr>")
map('n', 'gp', ':LspSagaDefPreview<cr>')
map('n', 'K', ':LspSagaHoverDoc<cr>')
map('n', 'rn', ':LspSagaRename<cr>')
map('n', '<leader>ca', ':LspSagaCodeAction<cr>')
map('v', '<leader>ca', ":'<,'>LspSagaRangeCodeAction<cr>")
