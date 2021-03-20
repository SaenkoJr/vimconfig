local protocol = require 'vim.lsp.protocol'

require 'compe'.setup {
  enabled              = true;
  autocomplete         = false;
  preselect            = 'disable';
  allow_prefix_unmatch = false;
  -- throttle_time        = 40;
  source_timeout       = 200;
  -- incomplete_delay     = 200;
  documentation        = true,

  source = {
    path       = { menu = ' [path]' };
    buffer     = { menu = ' [buffer]',  priority = 2 },
    vsnip      = { menu = ' [snippet]', priority = 1 };
    nvim_lsp   = { menu = ' [lsp]',     priority = 3 };
    nvim_lua   = { menu = ' [lua]' };
    -- omni       = { menu = '𐂷 [omni]' };
    treesitter = {
      menu = '𐂷 [treesitter]',
      ignored_filetypes = { 'yaml', 'yml' },
    };
  }
}

map('i', '<C-space>', 'compe#complete()', { expr = true })
map('i', '<C-y>', 'compe#confirm("<CR>")', { expr = true })
map('i', '<C-e>', 'compe#close("<C-e>")', { expr = true })
map('i', '<C-f>', 'compe#scroll({ "delta": +4 })', { expr = true })
map('i', '<C-d>', 'compe#scroll({ "delta": -4 })', { expr = true })

protocol.CompletionItemKind = {
  "ﮜ [text]",
  " [method]",
  " [function]",
  " [constructor]",
  "ﰠ [field]",
  " [variable]",
  " [class]",
  " [interface]",
  " [module]",
  " [property]",
  " [unit]",
  " [value]",
  " [enum]",
  " [key]",
  " [snippet]",
  " [color]",
  " [file]",
  " [reference]",
  " [folder]",
  " [enum member]",
  " [constant]",
  " [struct]",
  "⌘ [event]",
  " [operator]",
  "⌂ [type]"
}
