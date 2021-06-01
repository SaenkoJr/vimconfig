vim.cmd('packadd! nvim-treesitter')

require'nvim-treesitter.configs'.setup {
  ensure_installed = 'maintained',
  ignore_install = {
    -- 'bash',
    'nix',
    'erlang',
    'devicetree',
    'gdscript',
    'ocamllex',
    'ledger',
    'supercollider'
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = { ruby=true },
  },
}
