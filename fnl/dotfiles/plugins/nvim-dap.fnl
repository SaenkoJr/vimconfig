(module dotfiles.plugins.nvim-dap
  {require {util dotfiles.util
            dap-ruby dap-ruby
            dapui dapui
            nvim-dap-virtual-text nvim-dap-virtual-text}})

(dapui.setup {})
(nvim-dap-virtual-text.setup
  {:show_stop_reason false})
