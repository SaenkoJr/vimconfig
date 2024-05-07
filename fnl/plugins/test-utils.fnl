(local uu (require :dotfiles.utils))

[(uu.tx :janko-m/vim-test {})
 (uu.tx :nvim-neotest/neotest {:init (uu.lc :test)
                               :dependencies [:nvim-neotest/nvim-nio
                                              :nvim-lua/plenary.nvim
                                              :olimorris/neotest-rspec]})]
                                              ; :antoinemadec/FixCursorHold.nvim]})]
