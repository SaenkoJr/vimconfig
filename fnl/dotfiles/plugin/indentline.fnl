(module dotfiles.plugin.indentline
  {require {util dotfiles.util}})

(util.set-var :g :indentLine_fileType [:pug :slim :slime :html.slim
                                       :html :yaml :yml :css :sass
                                       :scss :ruby :eruby :eruby.yaml :jsx
                                       :javascript.jsx :javascript.react
                                       :NvimTree])

(util.set-var :g :indentLine_char "┆")
(util.set-var :g :indentLine_conceallevel 2)
(util.set-var :g :vim_json_syntax_conceal 0)
