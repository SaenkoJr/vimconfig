(local conform (require :conform))

(conform.setup
  {:formatters_by_ft
    {:ruby [:rubocop]
     :eruby [:erb_format]
     :javascript [:eslint_d]}})

(tset conform.formatters :prettier
  {:prepend_args ["--single-quote"]})
