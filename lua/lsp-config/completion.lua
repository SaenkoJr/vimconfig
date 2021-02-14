au('BufEnter', '*', 'lua require("completion").on_attach()')
vim.cmd [[
  augroup CompletionTriggerCharacter
    autocmd BufEnter * let g:completion_trigger_character = ['.', '/']
    autocmd BufEnter *.rb,*.rake let g:completion_trigger_character = ['.', '::', ':']
  augroup end
]]

vim.g.completion_items_priority = {
  Field      = 10,
  Method     = 10,
  Function   = 10,
  Variables  = 9,
  Variable   = 9,
  Constant   = 9,
  Enum       = 9,
  Interfaces = 8,
  Class      = 8,
  Struct     = 7,
  Keyword    = 9,
  Treesitter = 7,
  Buffers    = 6,
  Text       = 5,
  TabNine    = 3,
  File       = 5,
}

vim.g.completion_confirm_key            = "<C-y>"
vim.g.completion_enable_auto_popup      = 0
vim.g.completion_matching_smart_case    = 0
vim.g.completion_trigger_on_delete      = 1
vim.g.completion_auto_change_source     = 1
vim.g.completion_matching_ignore_case   = 0
vim.g.completion_menu_length            = 100
vim.g.completion_timer_cycle            = 50
vim.g.completion_matching_strategy_list = { 'exact', 'substring' }
vim.g.completion_chain_complete_list    = {
  default = {
    { complete_items = { 'lsp' } },
    { complete_items = { 'ts', 'buffers' } },
    { complete_items = { 'snippet' } },
    -- { complete_items = { 'snippet' } },
    -- { complete_items = { 'buffers' } },
  }
}

vim.g.completion_customize_lsp_label = {
  Field         = 'ﰠ [field]',
  Method        = ' [method]',
  Function      = ' [function]',
  Variable      = ' [variable]',
  Constant      = ' [const]',
  Interfaces    = ' [interface]',
  Class         = ' [class]',
  Struct        = ' [struct]',
  Keyword       = ' [keyword]',
  Treesitter    = ' [treesitter]',
  ['v']         = ' [treesitter]',
  Snippet       = ' [snippets]',
  ['vim-vsnip'] = ' [snippets]',
  TabNine       = ' [tabnine]',
  Buffers       = ' [buffers]',
  Text          = 'ﮜ [text]',
  File          = ' [file]',
  Enum          = ' [enum]',
  Folder        = ' [folder]',
}

-- 'Function':  '',
-- 'Method':    '',
-- 'Reference': '',
-- 'Enum':      '',
-- 'Field':     'ﰠ',
-- 'Keyword':   '',
-- 'Variable':  '',
-- 'Folder':    '',
-- 'Snippet':   '',
-- 'Operator':  '',
-- 'Module':    '',
-- 'Text':      'ﮜ',
-- 'Buffers':   '',
-- 'Class':     '',
-- 'Interface': ''

    -- "keyword":       "\uf1de",
    -- "variable":      "\ue79b",
    -- "value":         "\uf89f",
    -- "operator":      "\u03a8",
    -- "function":      "\u0192",
    -- "reference":     "\ufa46",
    -- "constant":      "\uf8fe",
    -- "method":        "\uf09a",
    -- "struct":        "\ufb44",
    -- "class":         "\uf0e8",
    -- "interface":     "\uf417",
    -- "text":          "\ue612",
    -- "enum":          "\uf435",
    -- "enumMember":    "\uf02b",
    -- "module":        "\uf40d",
    -- "color":         "\ue22b",
    -- "property":      "\ue624",
    -- "field":         "\uf9be",
    -- "unit":          "\uf475",
    -- "event":         "\ufacd",
    -- "file":          "\uf723",
    -- "folder":        "\uf114",
    -- "snippet":       "\ue60b",
    -- "typeParameter": "\uf728",
    -- "default":       "\uf29c"
