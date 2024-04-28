-- [nfnl] Compiled from fnl/plugins/configs/galaxyline.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.galaxyline, {[require] = {[util] = saenkomm.util, [nvim] = aniseed.nvim, [core] = aniseed.core, [gl] = galaxyline, [fileinfo] = galaxyline.provider_fileinfo, [vcs] = galaxyline.provider_vcs, [condition] = galaxyline.condition}})
gl.short_line_list = {"LuaTree", "packager", "Floaterm", "fugitive", "UltestSummary"}
def(colors, {bg = "#f2f2f2", fg = "#81A1C1", ["line-bg"] = "#f2f2f2", lbg = "NONE", ["fg-green"] = "#8FBCBB", yellow = "#EBCB8B", cyan = "#A3BE8C", darkblue = "#81A1C1", green = "#8FBCBB", orange = "#D08770", purple = "#B48EAD", magenta = "#BF616A", gray = "#616E88", blue = "#5E81AC", red = "#BF616A"})
def(__fnl_global__mode_2dcolor, {n = colors.magenta, i = colors.green, v = colors.blue, ["\22"] = colors.blue, V = colors.blue, c = colors.red, no = colors.magenta, s = colors.orange, S = colors.orange, ["\19"] = colors.orange, ic = colors.yellow, R = colors.purple, Rv = colors.purple, cv = colors.red, ce = colors.red, r = colors.cyan, rm = colors.cyan, ["r?"] = colors.cyan, ["!"] = colors.red, t = colors.red})
def(__fnl_global__mode_2dname, {n = "NORMAL", c = "COMMAND", V = "VISUAL", v = "VISUAL", ["\22"] = "VISUAL", R = "REPLACE", t = "TERMINAL", i = "INSERT", s = "INSERT", S = "INSERT", ["\19"] = "INSERT"})
__fnl_global__defn_2d(__fnl_global__set_2dconfig, {side, config}, core["assoc-in"](gl, {"section", side}, config))
local function _1_()
  vim.cmd(("hi GalaxyViMode guifg=" .. (__fnl_global__mode_2dcolor)[vim.fn.mode()]))
  return (" " .. (__fnl_global__mode_2dname)[vim.fn.mode()] .. " ")
end
local function _2_()
  local file = vim.fn.expand("%:p:.")
  local lock_icon = " \239\128\163"
  if nvim.bo.readonly then
    return (file .. lock_icon)
  else
    return file
  end
end
local function _4_()
  if nvim.bo.modified then
    return " unsaved "
  else
    return nil
  end
end
__fnl_global__set_2dconfig("left", {{ViMode = {provider = _1_, highlight = {nil, colors.lbg, "bold"}}}, {FileIcon = {provider = "FileIcon", condition = condition.buffer_not_empty, highlight = {fileinfo.get_file_icon_color, colors.lbg}}}, {FileName = {provider = _2_, condition = condition.buffer_not_empty, separator = " ", separator_highlight = {colors.purple, colors.lbg}, highlight = {colors.purple, colors.lbg, "bold"}}}, {SavedFile = {provider = _4_, separator = " ", highlight = {colors.gray, colors.yellow}}}})
local function _6_()
  if nvim.bo.modified then
    return " "
  else
    return nil
  end
end
local function _8_()
  return vim.fn.expand("%:p:.")
end
local function _9_()
  if nvim.bo.modified then
    return " unsaved "
  else
    return nil
  end
end
__fnl_global__set_2dconfig("short_line_left", {{FirstElement = {provider = _6_}}, {BufferType = {provider = "FileIcon", separator = " ", highlight = {colors.blue, colors.lbg, "bold"}, separator_highlight = {nil, colors.lbg}}}, {SFileName = {provider = _8_, separator = " "}}, {SFileNameIcon = {provider = _9_, separator = " ", highlight = {colors.gray, colors.yellow}}}})
local function _11_()
  return nvim.bo.filetype
end
local function _12_()
  return (" " .. vim.bo.fenc)
end
local function _13_()
  return vim.bo.fileformat
end
return __fnl_global__set_2dconfig("right", {{FileTypeName = {provider = _11_, separator = " ", highlight = {colors.orange, colors.lbg, "bold"}}}, {GitBranch = {provider = "GitBranch", icon = "\239\158\161 ", separator = " ", condition = vcs.check_git_workspace, highlight = {colors.orange, colors.lbg, "bold"}, separator_highlight = {colors.purple, colors.lbg}}}, {FileEncode = {provider = _12_, separator = " ", condition = condition.buffer_not_empty}}, {FileFormat = {provider = _13_, separator = " ", condition = condition.buffer_not_empty}}, {LineInfo = {provider = "LineColumn", separator = " ", separator_highlight = {colors.blue, colors.lbg}, highlight = {colors.gray, colors.lbg}}}, {DiagnosticError = {provider = "DiagnosticError", separator = " ", icon = "\240\159\151\180 ", highlight = {colors.red, colors.lbg}, separator_highlight = {colors.bg, colors.lbg}}}, {DiagnosticWarn = {provider = "DiagnosticWarn", icon = "\239\129\177 ", highlight = {colors.yellow, colors.lbg}, separator_highlight = {colors.bg, colors.lbg}}}, {DiagnosticInfo = {provider = "DiagnosticInfo", icon = "\239\131\171 ", highlight = {colors.green, colors.lbg}, separator_highlight = {colors.bg, colors.lbg}}}, {DiagnosticHint = {provider = "DiagnosticHint", icon = "\239\130\173 ", highlight = {colors.blue, colors.lbg}, separator_highlight = {colors.bg, colors.lbg}}}})
