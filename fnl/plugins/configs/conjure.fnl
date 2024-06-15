(local uu (require :dotfiles.utils))

; (util.set-var :g :conjure#client#fennel#aniseed#aniseed_module_prefix "aniseed.")
(uu.set-var :g :conjure#mapping#doc_word "K")
(uu.set-var :g :conjure#eval#result_register "*")
(uu.set-var :g :conjure#log#botright true)
(uu.set-var :g :conjure#extract#tree_sitter#enabled true)
(uu.set-var :g :conjure#highlight#enabled true)
(uu.set-var :g :conjure#filetypes [:clojure :racket :scheme :fennel :lisp :sql])

(uu.set-var :g :conjure#log#hud#height 0.6)

(uu.set-var :g :clojure_align_multiline_strings 1)

;; racket
(uu.set-var :g :conjure#client#racket#stdio#command "racket")
