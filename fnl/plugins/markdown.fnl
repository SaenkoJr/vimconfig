(local uu (require :dotfiles.utils))

[(uu.tx :iamcco/markdown-preview.nvim {:init (uu.lc :markdown)
                                       :build "cd app && yarn install"
                                       :ft [:markdown :md]})]
