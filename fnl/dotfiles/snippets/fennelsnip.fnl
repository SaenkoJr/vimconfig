(module dotfiles.snippets.fennelsnip
  {require {core aniseed.core
            ls luasnip}})

(def s ls.snippet)
(def t ls.text_node)
(def i ls.insert_node)
(def f ls.function_node)
(def c ls.choice_node)
(def sn ls.snippet_node)
(def d ls.dynamic_node)

(def snippets
  [(s "md" [(t ["some shit "]) (i 1)
            (t ["jopa"] (i 2))])
   (s "trig" (sn 1 [(t "some shit ")
                    (i 1 "some jopa")]))])
