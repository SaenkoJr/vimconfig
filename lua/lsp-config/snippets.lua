vim.g.completion_enable_snippet = 'vim-vsnip'

vim.g.vsnip_snippet_dir = os.getenv('HOME') .. '/.config/nvim/private-snips'
-- vim.g.vsnip_filetypes = {}
-- vim.g.vsnip_filetypes.javascriptreact = { 'javascript' }
-- vim.g.vsnip_filetypes.typescriptreact = { 'typescript' }

map('i', '<C-l>', 'vsnip#expandable() ? "<Plug>(vsnip-expand)" : "<C-l>"', { expr = true, noremap = false })
map('s', '<C-l>', 'vsnip#expandable() ? "<Plug>(vsnip-expand)" : "<C-l>"', { expr = true, noremap = false })

-- map('i', '<C-l>', 'vsnip#available(1)  ? "\\<Plug>(vsnip-expand-or-jump)" : "\\<C-l>"', { expr = true, noremap = false })
-- map('s', '<C-l>', 'vsnip#available(1)  ? "\\<Plug>(vsnip-expand-or-jump)" : "\\<C-l>"', { expr = true, noremap = false })

map('i', '<Tab>', 'vsnip#jumpable(1) ? "<Plug>(vsnip-jump-next)" : "<Tab>"', { expr = true, noremap = false })
map('s', '<Tab>', 'vsnip#jumpable(1) ? "<Plug>(vsnip-jump-next)" : "<Tab>"', { expr = true, noremap = false })
map('i', '<S-Tab>', 'vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"', { expr = true, noremap = false })
map('s', '<S-Tab>', 'vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"', { expr = true, noremap = false })

-- map('i', '<Tab>', '<Plug>(vsnip-jump-next)', { noremap = false })
-- map('s', '<Tab>', '<Plug>(vsnip-jump-next)', { noremap = false })
-- map('i', '<S-Tab>', '<Plug>(vsnip-jump-prev)', { noremap = false })
-- map('s', '<S-Tab>', '<Plug>(vsnip-jump-prev)', { noremap = false })

map('v', '<leader>s', ':VsnipYank<cr>')
