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
      'supercollider',
      -- 'fennel'
    },
    highlight = {
      enable = true,
      disable = {
        -- 'fennel'
      },
    },
  }
