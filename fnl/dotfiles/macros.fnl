{:augroup
 (fn [name ...]
   `(do
      (nvim.ex.augroup ,(tostring name))
      (nvim.ex.autocmd_)
      ,(list `do ...)
      (nvim.ex.augroup :END)))

 :autocmd
 (fn [...]
   `(nvim.ex.autocmd ,...))

 :ex
 (fn [name ...]
   `((. nvim.ex ,(tostring name)) ,...))

 :viml->fn
 (fn [name]
   `(.. "lua require('" *module-name* "')['" ,(tostring name) "']()"))}
