(local wd (require :workspace-diagnostics))
(local core (require :aniseed.core))
(local as (require :aniseed.string))

(local files (as.split (vim.fn.system "git ls-files") "\n"))

(fn contains-substring? [s substring]
  (s:match substring))

(local js-files (core.filter #(contains-substring? $1 "%.js$") files))
(local jsx-files (core.filter #(contains-substring? $1 "%.jsx$") files))
(local ruby-files (core.filter #(contains-substring? $1 "%.rb$") files))

(wd.setup
  {:workspace_files (fn []
                      (core.concat js-files jsx-files))})
