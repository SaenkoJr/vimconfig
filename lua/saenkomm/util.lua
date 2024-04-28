-- [nfnl] Compiled from fnl/saenkomm/util.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.util, {[require] = {[nvim] = aniseed.nvim, [core] = aniseed.core}})
defn(noremap, {mode, from, to, __fnl_global___3foptions}, "Sets a mapping with {:noremap true :silent true}.", nvim.set_keymap(mode, from, to, core.merge({noremap = true, silent = true}, __fnl_global___3foptions)))
defn(bnoremap, {bufnr, mode, from, to, __fnl_global___3foptions}, nvim.buf_set_keymap(bufnr, mode, from, to, core.merge({noremap = true, silent = true}, __fnl_global___3foptions)))
defn(inoremap, {from, to, __fnl_global___3foptions}, "Sets a insert mapping with {:noremap true :silent true} by default.", nvim.set_keymap("i", from, to, core.merge({noremap = true, silent = true}, __fnl_global___3foptions)))
for _, opt in ipairs(opts) do
  nvim.ex.set(opt)
end
defn(__fnl_global__nvim_2dsets, {opts}, nil)
for name, value in pairs(options) do
  nvim.set_option_value(name, value, {})
end
defn(__fnl_global__set_2doptions, {options}, nil)
local function _2_(...)
  local _1_ = mode
  if (_1_ == "g") then
    nvim.g[name] = value
    return nil
  elseif (_1_ == "v") then
    nvim.v[name] = value
    return nil
  elseif (_1_ == "w") then
    nvim.w[0][name] = value
    return nil
  elseif (_1_ == "b") then
    nvim.b[0][name] = value
    return nil
  elseif (_1_ == "t") then
    return nvim.tabpage_set_var(0, name, value)
  else
    return nil
  end
end
defn(__fnl_global__set_2dvar, {mode, name, value}, "Set global or local vars.", _2_(...))
defn(expand, {path}, nvim.fn.expand(path))
defn(glob, {path}, nvim.fn.glob(path, true, true, true))
defn(__fnl_global__exists_3f, {path}, (nvim.fn.filereadable(path) == 1))
defn(__fnl_global__lua_2dfile, {path}, nvim.ex.luafile(path))
return def(__fnl_global__config_2dpath, nvim.fn.stdpath("config"))
