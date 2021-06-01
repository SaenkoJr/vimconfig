" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  aniseed = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/aniseed"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["bclose.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/bclose.vim"
  },
  conjure = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/conjure"
  },
  ["easybuffer.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/easybuffer.vim"
  },
  ["echodoc.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/echodoc.vim"
  },
  fzf = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/papercolor-theme"
  },
  ["parinfer-rust"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/parinfer-rust"
  },
  ["ranger.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/ranger.vim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-bbye"
  },
  ["vim-bufonly"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-bufonly"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-jdaddy"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/vim-jdaddy"
  },
  ["vim-lastplace"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-lastplace"
  },
  ["vim-ragtag"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-ragtag"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-speeddating"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-speeddating"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  }
}

time("Defining packer_plugins", false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time("Defining lazy-load filetype autocommands", true)
vim.cmd [[au FileType json ++once lua require("packer.load")({'vim-jdaddy'}, { ft = "json" }, _G.packer_plugins)]]
time("Defining lazy-load filetype autocommands", false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
