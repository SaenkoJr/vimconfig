(module dotfiles.plugin.treesitter
  {require {nvim aniseed.nvim
            utils dotfiles.util}})

(nvim.ex.packadd_ :nvim-treesitter)

(def- config {:ensure_installed :maintained
              :ignore_install [:nix :erlang :devicetree
                               :gdscript :ocamllex :ledger
                               :supercollider]
              :highlight {:enable true}})

(vim.schedule
  (fn []
    (def- treesitter (require "nvim-treesitter.configs"))
    (treesitter.setup config)))
