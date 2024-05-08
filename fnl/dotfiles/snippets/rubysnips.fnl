(local ls (require :luasnip))

(local s ls.snippet)
(local t ls.text_node)
(local i ls.insert_node)
(local f ls.function_node)
(local c ls.choice_node)
(local sn ls.snippet_node)
(local d ls.dynamic_node)
(local isn ls.indent_snippet_node)
(local fmt (. (require :luasnip.extras.fmt) :fmt))

(local snippets
  [(s "def" [(t "def ") (i 1)
             (t ["" "  "]) (i 0)
             (t ["" "end"])])
   (s "pp" [(t "pp '------------------------------------------'")
            (t ["" "pp "]) (i 0)
            (t ["" "pp '------------------------------------------'"])])
   (s "m" [(t "module ") (i 1)
           (t ["" "\t"]) (i 0)
           (t ["" "end"])])
   (s "cl" [(t "class ") (i 1)
            (t ["" "\t"]) (i 0)
            (t ["" "end"])])
   (s "it" [(t "it {  }")])
   (s "d" [(t "debugger")])])

{: snippets}
