(module dotfiles.plugin.lsp-utils
  {require {util dotfiles.util}})

(util.set-var :g :lsp_utils_location_opts {:height 30
                                           :mode :editor
                                           :list {:border true}})
