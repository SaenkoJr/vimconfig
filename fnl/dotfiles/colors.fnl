(module dotfiles.colors
  {require {nvim aniseed.nvim
            core aniseed.core
            utils dotfiles.util}
   require-macros [dotfiles.macros]})

(nvim.ex.colorscheme :paper)
(utils.set-var :g :ayucolor :dark)
(core.assoc-in nvim [:o :background] :light)

(defn set_diagnostic_colors []
  (let [diagnostic-colors {:Hint        :#1f5fd2
                           :Information :#1f5fd2
                           :Warning     :#d9cf50
                           :Error       :#e84444}]
    (each [name color (pairs diagnostic-colors)]
      (ex hi (.. :DiagnosticDefault     name) (.. :guifg= color) :guibg=none)
      (ex hi (.. :DiagnosticVirtualText name) (.. :guifg= color) :guibg=none)
      (ex hi (.. :DiagnosticFloating    name) (.. :guifg= color) :guibg=none)
      (ex hi (.. :DiagnosticSign        name) (.. :guifg= color) :guibg=none))))

(augroup lsp_diagnostics_colors
 (autocmd :BufEnter :* (viml->fn set_diagnostic_colors)))
