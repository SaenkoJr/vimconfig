local protocol = require 'vim.lsp.protocol'

require 'compe'.setup {
  enabled              = true;
  autocomplete         = false;
  preselect            = 'disable';
  allow_prefix_unmatch = false;
  source_timeout       = 200;
  documentation        = true,

  source = {
    path       = { menu = ' [path]' };
    -- buffer     = { menu = ' [buffer]',  priority = 2 },
    buffer     = false,
    vsnip      = { menu = ' [snippet]', priority = 1 };
    nvim_lsp   = { menu = ' [lsp]',     priority = 2 };
    nvim_lua   = { menu = ' [lua]' };
    -- omni    = { menu = '𐂷 [omni]' };
    omni       = false;
    -- treesitter = {
    --   menu = '𐂷 [treesitter]',
    --   ignored_filetypes = { 'yaml', 'yml' },
    --   priority = 3
    -- };
  }
}

map('i', '<C-space>', 'compe#complete()', { expr = true })
map('i', '<C-y>', 'compe#confirm("<CR>")', { expr = true })
map('i', '<C-c>', 'compe#close("<C-c>")', { expr = true })

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
