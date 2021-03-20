-- map('n', '<leader>ff', '<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files <cr>')
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')

map('n', '<leader>fn', ':Rg <C-R><C-W><cr>')
map('n', '<leader>FN', '<cmd>Telescope grep_string<cr>')

map('n', '<leader>ff', '<cmd>Files<cr>')
map('n', '<leader>FF', '<cmd>Files ~<cr>')

map('n', '<leader>ds', '<cmd>Telescope lsp_document_symbols<cr>')
