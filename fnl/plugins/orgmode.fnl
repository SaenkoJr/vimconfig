(local uu (require :dotfiles.utils))

[(uu.tx :kristijanhusak/orgmode.nvim {:init (uu.lc :orgmode)})
 (uu.tx :akinsho/org-bullets.nvim {})
 (uu.tx :lukas-reineke/headlines.nvim {})]
