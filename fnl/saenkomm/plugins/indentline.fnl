(module saenkomm.plugins.indentline
  {require {util saenkomm.util
            indent_blankline indent_blankline}})

(util.set-var :g :indentLine_fileType [:pug :slim :slime :html.slim
                                       :html :xhtml :yaml :yml :css :sass
                                       :scss :ruby :eruby :eruby.yaml :jsx
                                       :javascript.jsx :javascript.react])

; (util.set-var :g :indentLine_char "|")
(util.set-var :g :indent_blankline_use_treesitter true)
(util.set-var :g :indentLine_conceallevel 2)
(util.set-var :g :vim_json_syntax_conceal 0)
(util.set-var :g :vim_json_syntax_conceal 0)

(util.set-var :g :indent_blankline_buftype_exclude [:terminal :nofile])

(tset vim.opt :list true)

(indent_blankline.setup
  {:show_current_context true
   :space_char_blankline " "})
