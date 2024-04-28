(local uu (require :dotfiles.utils))

[(uu.tx :RishabhRD/nvim-lsputils {:dependencies [:RishabhRD/popfix]
                                  :init (uu.lc :lsp-utils)})
 (uu.tx :williamboman/mason-lspconfig.nvim
        {:dependencies [(uu.tx :williamboman/mason.nvim {:lazy false})
                        :neovim/nvim-lspconfig
                        :jayp0521/mason-null-ls.nvim]})
 (uu.tx :j-hui/fidget.nvim {:lazy false})
 (uu.tx :nvimdev/lspsaga.nvim {:init (uu.lc :lsp-saga)})
 (uu.tx :zbirenbaum/copilot.lua {:init (uu.lc :copilot)})
 :jubnzv/virtual-types.nvim
 :jose-elias-alvarez/null-ls.nvim
 :nanotee/sqls.nvim]
