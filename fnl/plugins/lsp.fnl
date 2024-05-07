(local uu (require :dotfiles.utils))

[(uu.tx :RishabhRD/nvim-lsputils {:dependencies [:RishabhRD/popfix]
                                  :init (uu.lc :lsp-utils)})
 (uu.tx :williamboman/mason-lspconfig.nvim {:dependencies [(uu.tx :williamboman/mason.nvim {:lazy false})
                                                           :neovim/nvim-lspconfig]})
 (uu.tx :j-hui/fidget.nvim {:lazy false})
 (uu.tx :nvimdev/lspsaga.nvim {:init (uu.lc :lsp-saga)})
 (uu.tx :zbirenbaum/copilot.lua {:init (uu.lc :copilot)})
 (uu.tx :stevearc/conform.nvim {:init (uu.lc :conform)})
 :jubnzv/virtual-types.nvim
 :nanotee/sqls.nvim
 (uu.tx :folke/trouble.nvim {:branch :dev
                             :init (uu.lc :nvim-trouble)
                             :opts {}})]
                             ; :keys [(uu.tx "<leader>td" "<cmd>Trouble diagnostics toggle focus=true<cr>" {:desc "Open trouble diagnostics"})]})]
