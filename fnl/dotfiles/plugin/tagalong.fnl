(module dotfiles.plugin.tagalong
  {require {util dotfiles.util}})

(util.set-var :g :tagalong_filetypes [:html :xml :eruby :ejs
                                      :eco :php: :htmldjango :js
                                      :jsx :tsx :javascriptreact :typescriptreact])
