-- [nfnl] Compiled from fnl/plugins/configs/lualine-nvim.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins["lualine-nvim"], {[require] = {[lualine] = lualine, [custom_ayu_ligh] = lualine.themes.ayu_light, [core] = aniseed.core}})
core["assoc-in"](custom_ayu_ligh, {"normal", "middle", "bg"}, "#000000")
local function _1_(...)
  if vim.bo.modified then
    return "unsaved"
  elseif vim.bo.readonly then
    return "protected"
  else
    return ""
  end
end
defn(__fnl_global__buf_2dstatus, {}, _1_(...))
return lualine.setup({options = {theme = custom_ayu_ligh, section_separators = {"\238\130\184", "\238\130\186"}, component_separators = "", disabled_filetypes = {}, always_divide_middle = true, globalstatus = true}, sections = {lualine_a = {"mode"}, lualine_b = {"branch"}, lualine_c = {{"filename", file_status = false}, {__fnl_global__buf_2dstatus, color = {bg = "#fcc930"}}}, lualine_x = {"diff"}, lualine_y = {"encoding", "fileformat", "filetype"}, lualine_z = {"location"}}, inactive_sections = {lualine_a = {"filename"}, lualine_b = {}, lualine_c = {{__fnl_global__buf_2dstatus, color = {bg = "#eeeeee"}}}, lualine_x = {"filetype", "location"}, lualine_y = {}, lualine_z = {}}, extensions = {"nvim-tree", "quickfix", "fzf", "fugitive"}})
