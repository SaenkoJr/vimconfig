(local uu (require :dotfiles.utils))

[(uu.tx :RishabhRD/nvim-lsputils {:dependencies [:RishabhRD/popfix]
                                  :init (uu.lc :lsp-utils)})
 (uu.tx :williamboman/mason-lspconfig.nvim {:dependencies [(uu.tx :williamboman/mason.nvim {:lazy false})
                                                           :neovim/nvim-lspconfig]})
 (uu.tx :j-hui/fidget.nvim {:lazy false})
 (uu.tx :nvimdev/lspsaga.nvim {:init (uu.lc :lsp-saga)})
 ; (uu.tx :zbirenbaum/copilot.lua {:init (uu.lc :copilot)})
 (uu.tx :supermaven-inc/supermaven-nvim {:init (uu.lc :supermaven)})
 (uu.tx :stevearc/conform.nvim {:init (uu.lc :conform)})
 (uu.tx :mfussenegger/nvim-lint)
 ; (uu.tx :artemave/workspace-diagnostics.nvim {:init (uu.lc :workspace-diagnostics)})
 :jubnzv/virtual-types.nvim
 :nanotee/sqls.nvim
 (uu.tx :folke/trouble.nvim {:init (uu.lc :nvim-trouble)
                             :opts {}})]
