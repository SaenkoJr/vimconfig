vim.cmd [[ packadd! nvim-compe ]]

require 'compe'.setup {
  enabled              = true,
  autocomplete         = false,
  debug                = false,
  min_length           = 1,
  preselect            = 'enable',
  throttle_time        = 80,
  source_timeout       = 50,
  incomplete_delay     = 100,
  allow_prefix_unmatch = false,

  source = {
    path          = true,
    buffer        = true,
    calc          = true,
    vsnip         = true,
    nvim_lsp      = true,
    nvim_lua      = true,
    spell         = true,
    tags          = true,
    snippets_nvim = true,
  },
}
