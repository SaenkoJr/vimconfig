-- [nfnl] Compiled from fnl/plugins/configs/nvim-cmp.fnl by https://github.com/Olical/nfnl, do not edit.
local cmp = require("cmp")
local copilot_cmp_comparators = require("copilot_cmp.comparators")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local tcm = require("tailwindcss-colorizer-cmp")
local uu = require("dotfiles.utils")
local lspkind = require("dotfiles.lspkind")
tcm.setup({color_square_width = 2})
local sources = {{name = "supermaven", priority = 11, group_index = 2}, {name = "nvim_lsp", priority = 10}, {name = "conjure", trigger_characters = {".", "/"}, priority = 4}, {name = "path"}, {name = "luasnip", priority = 3}, {name = "nvim_lua", priority = 4}, {name = "orgmode"}, {name = "buffer", max_item_count = 15, priority = 1}}
local function fmtfn(entry, vim_item)
  vim_item["menu"] = lspkind.menu_icons[entry.source.name]
  vim_item["kind"] = ("  " .. lspkind.menu_kind[vim_item.kind])
  return tcm.formatter(entry, vim_item)
end
local comparators = {copilot_cmp_comparators.prioritize, copilot_cmp_comparators.score, cmp.config.compare.offset, cmp.config.compare.exact, cmp.config.compare.score, cmp.config.compare.recently_used, cmp.config.compare.locality, cmp.config.compare.kind, cmp.config.compare.sort_text, cmp.config.compare.length, cmp.config.compare.order}
local function _1_(args)
  return (require("luasnip")).lsp_expand(args.body)
end
cmp.setup({completion = {keyword_length = 2}, experimental = {ghost_text = {}}, documentation = cmp.DocumentationConfig, mapping = {["<c-space>"] = cmp.mapping.complete(), ["<c-j>"] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), ["<c-k>"] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), ["<c-y>"] = cmp.mapping.confirm({select = true}), ["<c-e>"] = cmp.mapping.abort(), ["<c-l>"] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace, select = false})}, snippet = {expand = _1_}, sources = cmp.config.sources(sources), window = {col_offset = -3, side_padding = 0, completion = cmp.config.window.bordered(), documentation = cmp.config.window.bordered()}, formatting = {fields = {"menu", "abbr", "kind"}, format = fmtfn}, formatters = {insert_text = (require("copilot_cmp.format")).remove_existing}, sorting = {priority_weight = 2, comparators = comparators}})
do end (cmp.event):on("confirm_done", cmp_autopairs.on_confirm_done())
uu.inoremap("<c-k>", "pumvisible() ? '<c-p>' : '<c-k>'", {expr = true})
return uu.inoremap("<c-j>", "pumvisible() ? '<c-n>' : '<c-j>'", {expr = true})
