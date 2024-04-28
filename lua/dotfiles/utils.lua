-- [nfnl] Compiled from fnl/dotfiles/utils.fnl by https://github.com/Olical/nfnl, do not edit.
local nvim = require("aniseed.nvim")
local core = require("aniseed.core")
local fun = require("dotfiles.vendor.fun")
local function noremap(mode, from, to, _3foptions)
  return nvim.set_keymap(mode, from, to, core.merge({noremap = true, silent = true}, _3foptions))
end
local function bnoremap(bufnr, mode, from, to, _3foptions)
  return nvim.buf_set_keymap(bufnr, mode, from, to, core.merge({noremap = true, silent = true}, _3foptions))
end
local function inoremap(from, to, _3foptions)
  return nvim.set_keymap("i", from, to, core.merge({noremap = true, silent = true}, _3foptions))
end
local function nvim_sets(opts)
  for _, opt in ipairs(opts) do
    nvim.ex.set(opt)
  end
  return nil
end
local function set_options(options)
  for name, value in pairs(options) do
    nvim.set_option_value(name, value, {})
  end
  return nil
end
local function set_var(mode, name, value)
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
local function expand(path)
  return nvim.fn.expand(path)
end
local function glob(path)
  return nvim.fn.glob(path, true, true, true)
end
local function exists_3f(path)
  return (nvim.fn.filereadable(path) == 1)
end
local function lua_file(path)
  return nvim.ex.luafile(path)
end
local config_path = nvim.fn.stdpath("config")
local function last(xs)
  return fun.nth(fun.length(xs), xs)
end
local function tx(...)
  local args = {...}
  local len = fun.length(args)
  if ("table" == type(last(args))) then
    local function _3_(acc, n, v)
      acc[n] = v
      return acc
    end
    return fun.reduce(_3_, last(args), fun.zip(fun.range(1, len), fun.take((len - 1), args)))
  else
    return args
  end
end
local function safe_require_plugin_config(name)
  local ok_3f, val_or_err = pcall(require, ("plugins.configs." .. name))
  if not ok_3f then
    return print(("config error: " .. val_or_err))
  else
    return nil
  end
end
local function lc(name)
  local function _6_()
    return safe_require_plugin_config(name)
  end
  return _6_
end
return {noremap = noremap, bnoremap = bnoremap, inoremap = inoremap, ["nvim-sets"] = nvim_sets, ["set-options"] = set_options, ["set-var"] = set_var, expand = expand, glob = glob, ["exists?"] = exists_3f, ["lua-file"] = lua_file, ["config-path"] = config_path, tx = tx, lc = lc}
