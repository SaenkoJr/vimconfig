(local conform (require :conform))

(conform.setup
  {:formatters_by_ft
    {:ruby [:rubocop]
     :eruby [:erb_format]
     :javascript [:prettier]}})
