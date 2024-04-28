-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/treesitter.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.treesitter, {[require] = {[nvim] = aniseed.nvim, [parsers] = "nvim-treesitter.parsers", [utils] = saenkomm.util}})
nvim.ex.packadd_("nvim-treesitter")
__fnl_global__def_2d(langs, {"c", "clojure", "css", "cmake", "comment", "commonlisp", "diff", "dockerfile", "elixir", "erlang", "fennel", "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore", "go", "graphql", "haskell", "haskell_persistent", "hjson", "hlsl", "html", "htmldjango", "http", "ini", "java", "javascript", "jq", "jsdoc", "json", "jsonc", "lua", "luadoc", "markdown", "make", "markdown_inline", "pug", "ql", "query", "r", "racket", "regex", "ruby", "rst", "rust", "scheme", "scss", "slint", "sql", "typescript", "tsx", "vim", "yaml"})
__fnl_global__def_2d(config, {ensure_installed = langs, highlight = {enable = true, additional_vim_regex_highlighting = false}, indent = {enable = true}, incremental_selection = {keymaps = {init_selection = "gnn", node_incremental = "gnn", node_decremental = "gnm", scope_incremental = "gnc"}, enable = false}, textobjects = {select = {enable = true, keymaps = {af = "@function.outer", ["if"] = "@function.inner", ab = "@block.outer", ib = "@block.inner", ac = "@class.outer", ic = "@class.inner"}}, swap = {enable = true, swap_next = {["<leader>a"] = "@parameter.inner"}, swap_previous = {["<leader>A"] = "@parameter.inner"}}}, endwise = {enable = true}, rainbow = {max_file_lines = 1000, extended_mode = false, enable = false}})
local function _1_()
  __fnl_global__def_2d(treesitter, require("nvim-treesitter.configs"))
  return treesitter.setup(config)
end
return vim.schedule(_1_)
