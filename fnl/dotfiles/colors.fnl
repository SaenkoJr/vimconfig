(module dotfiles.colors
  {require {nvim aniseed.nvim
            core aniseed.core
            utils dotfiles.util}
   require-macros [dotfiles.macros]})

(nvim.ex.colorscheme :paper)
(utils.set-var :g :ayucolor :dark)

(def- diagnostic-colors
  {:Hint        :Red
   :Information :#1f5fd2
   :Warning     :#d9cf50
   :Error       :#e84444})

(defn set-diagnostic-colors []
  (each [name color (pairs diagnostic-colors)]
    (_: hi (.. :LspDiagnosticsDefault     name) (.. :guifg= color) :guibg=none)
    (_: hi (.. :LspDiagnosticsVirtualText name) (.. :guifg= color) :guibg=none)
    (_: hi (.. :LspDiagnosticsFloating    name) (.. :guifg= color) :guibg=none)
    (_: hi (.. :LspDiagnosticsSign        name) (.. :guifg= color) :guibg=none)))

(augroup lsp_diagnostics
         (autocmd :ColorScheme :* (viml->fn set-diagnostic-colors)))
