(module dotfiles.plugin.indentline
  {require {utils dotfiles.utils}})

(utils.set_var :g :indentline_fileType [:pug :slim :slime :html.slim
                                        :html :yaml :yml :css :sass
                                        :scss :ruby :eruby :jsx
                                        :javascript.jsx :javascript.react])

(utils.set_var :g :indentLine_char "┆")
(utils.set_var :g :indentLine_conceallevel 2)
(utils.set_var :g :vim_json_syntax_conceal 0)
