(module saenkomm.plugins.conjure
  {require {util saenkomm.util}})

; (util.set-var :g :conjure#client#fennel#aniseed#aniseed_module_prefix "aniseed.")
(util.set-var :g :conjure#mapping#doc_word "K")
(util.set-var :g :conjure#eval#result_register "*")
(util.set-var :g :conjure#log#botright true)
(util.set-var :g :conjure#extract#tree_sitter#enabled true)
(util.set-var :g :conjure#highlight#enabled true)

(util.set-var :g :conjure#log#hud#height 0.7)

(util.set-var :g :clojure_align_multiline_strings 1)

;; racket
(util.set-var :g :conjure#client#racket#stdio#command "racket")
