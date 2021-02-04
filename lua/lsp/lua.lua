local lspconfig = require 'lspconfig'

local sumneko_root_path = os.getenv('HOME') .. '/binaries/lua-language-server'
local sumneko_bin = sumneko_root_path .. '/bin/Linux/lua-language-server'

lspconfig.sumneko_lua.setup {
  cmd = { sumneko_bin, '-E', sumneko_root_path .. '/main.lua' },
  on_attach = on_attach_lsp,
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {"vim", "use", "map"}
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
        }
      }
    }
  }
}
