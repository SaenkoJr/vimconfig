(module dotfiles.snippets.rubysnip
  {require {core aniseed.core
            ls luasnip}})

(def s ls.snippet)
(def t ls.text_node)
(def i ls.insert_node)
(def f ls.function_node)
(def c ls.choice_node)
(def sn ls.snippet_node)
(def d ls.dynamic_node)
(def isn ls.indent_snippet_node)

(def snippets
  [(s "def" [(t "def ") (i 1)
             (t ["" "  "]) (i 0)
             (t ["" "end"])])
   (s "pp" [(t "pp '------------------------------------------'")
            (t ["" "pp "]) (i 0)
            (t ["" "pp '------------------------------------------'"])])])