-- [nfnl] Compiled from fnl/plugins/configs/lualine-nvim.fnl by https://github.com/Olical/nfnl, do not edit.
local lualine = require("lualine")
local custom_ayu_ligh = require("lualine.themes.ayu_light")
local core = require("aniseed.core")
core["assoc-in"](custom_ayu_ligh, {"normal", "middle", "bg"}, "#000000")
local function buf_status()
  if vim.bo.modified then
    return "unsaved"
  elseif vim.bo.readonly then
    return "protected"
  else
    return ""
  end
end
return lualine.setup({options = {theme = custom_ayu_ligh, section_separators = {"\238\130\184", "\238\130\186"}, component_separators = "", disabled_filetypes = {}, always_divide_middle = true, globalstatus = true}, sections = {lualine_a = {"mode"}, lualine_b = {"branch"}, lualine_c = {{"filename", file_status = false}, {buf_status, color = {bg = "#fcc930"}}}, lualine_x = {"diff"}, lualine_y = {"encoding", "fileformat", "filetype"}, lualine_z = {"location"}}, inactive_sections = {lualine_a = {"filename"}, lualine_b = {}, lualine_c = {{buf_status, color = {bg = "#eeeeee"}}}, lualine_x = {"filetype", "location"}, lualine_y = {}, lualine_z = {}}, extensions = {"nvim-tree", "quickfix", "fzf", "fugitive"}})
