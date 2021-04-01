vim.cmd('packadd! nvim-treesitter')

require'nvim-treesitter.configs'.setup {
  ensure_installed = 'maintained',
  ignore_install = {
    'nix',
    'erlang',
    'devicetree',
    'gdscript',
    'ocamllex',
    'ledger',
    'supercollider'
  },
  highlight = {
    enable = true
  },
}
