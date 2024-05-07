-- [nfnl] Compiled from fnl/plugins/configs/test.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("dotfiles.utils")
local neotest = require("neotest")
local rspec_adapter = require("neotest-rspec")
local function rspec_cmd()
  if (1 == vim.fn.filereadable("./docker-compose.yml")) then
    return vim.tbl_flatten({"docker", "compose", "run", "--rm", "-w", "/usr/app", "web", "bundle", "exec", "rspec"})
  else
    return vim.tbl_flatten({"bundle", "exec", "rspec"})
  end
end
local function rspec_path(path)
  if (1 == vim.fn.filereadable("./docker-compose.yml")) then
    local prefix = rspec_adapter.root(path)
    return string.sub(path, (string.len(prefix) + 2), -1)
  else
    return path
  end
end
neotest.setup({adapters = {rspec_adapter({rspec_cmd = rspec_cmd, transform_spec_path = rspec_path, results_path = "tmp/rspec.output"})}})
util.noremap("n", "<leader>ts", ":Neotest summary<cr>")
util.noremap("n", "<leader>to", ":Neotest output<cr>")
util.noremap("n", "<leader>tf", ":Neotest run file<cr>")
util.noremap("n", "<leader>tn", ":Neotest run<cr>")
util.noremap("n", "<leader>tl", ":Neotest run last<cr>")
return util.noremap("n", "<leader>ta", ":Neotest attach<cr>")
