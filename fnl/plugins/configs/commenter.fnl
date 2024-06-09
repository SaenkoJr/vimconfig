(local tscomment (require :ts_context_commentstring))

(tscomment.setup
 {:enable_autocmd false})

((. (require :mini.comment) :setup)
 {:options
  {:ignore_blank_line true
   :custom_commentstring (fn []
                           (or
                             (tscomment.calculate_commentstring)
                             (. vim.bo :commentstring)))}})
