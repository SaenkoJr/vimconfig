(local conform (require :conform))
(local conform-utils (require :conform.util))

(conform.setup
  {:cwd (conform-utils.root_file ["package.json" ".git"
                                  ".eslintrc.yaml" ".eslintrc.yml" "eslint.config.js"
                                  ".rubocop.yml" ".rubocop.yaml" "requirements.txt"])
   :require_cwd true
   :formatters_by_ft {:ruby [:rubocop]
                      :eruby [:erb_format]
                      ; :javascript [:eslint]
                      ; :javascriptreact [:eslint]
                      :javascript [ :eslint_d]
                      :javascriptreact [ :eslint_d]
                      :rust [:rustfmt]
                      :python [:black]
                      :* [:trim_whitespace]}})

(tset conform.formatters :prettier
  {:prepend_args ["--single-quote"]})

(tset conform.formatters :StripWhitespace {})
