(local ls (require :luasnip))

(local s ls.snippet)
(local t ls.text_node)
(local i ls.insert_node)
(local f ls.function_node)
(local c ls.choice_node)
(local sn ls.snippet_node)
(local d ls.dynamic_node)

(local snippets
  [(s :mod [(t "(module dotfiles.)") (i 1)])])

{: snippets}
