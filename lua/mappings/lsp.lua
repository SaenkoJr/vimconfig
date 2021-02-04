map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
map('n', '<leader>gt', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
-- map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
map('n', '<leader>K', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
-- map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>')
map('n', '<leader>k', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
map('n', '<leader>j', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')

map('n', '<leader>di', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')

-------- saga
-- map('n', 'gd', ':Lspsaga lsp_finder<cr>')
map('n', 'gs', ':Lspsaga signature_help<cr>')
map('n', 'gp', ':Lspsaga preview_definition<cr>')
map('n', 'K',  ':Lspsaga hover_doc<cr>')
map('n', '<leader>rn', ':Lspsaga rename<cr>')
map('n', '<leader>ca', ':Lspsaga code_action<cr>')
map('v', '<leader>ca', ":'<,'>Lspsaga range_code_action<cr>")

-------- completion
-- map('i', '<C-Space>', 'compe#complete()', { expr = true })
-- map('i', '<C-l>',     'compe#confirm("<cr>")',  { expr = true })
-- map('i', '<C-e>',     'compe#close("<C-e>")',    { expr = true })

map('i', '<C-Space>', '<Plug>(completion_trigger)', { noremap = false })
map('i', '<C-k>', 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', { expr = true })
map('i', '<C-j>', 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', { expr = true })
