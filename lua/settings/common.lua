local scopes = { o = vim.o, b = vim.bo, w = vim.wo }

local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

vim.python_host_prog  = '$HOME/.asdf/shims/python2'
vim.python3_host_prog = '$HOME/.asdf/shims/python3'

vim.loaded_netrw       = 1
vim.loaded_netrwPlugin = 1

local rg_opts = [[
  rg --column
    --line-number
    --no-heading
    --color=always
    --fixed-strings
    --smart-case
    --hidden
    --follow
    --g "!yarn.lock"
    --g "!.git"
    --g "!node_modules"
]]

vim.cmd 'filetype plugin indent on'
vim.cmd 'syntax sync minlines=256'
vim.cmd 'colorscheme paper'
opt('o', 'background', 'light')

vim.cmd (
  "command! -bang -nargs=* Rg call fzf#vim#grep('"
  .. rg_opts ..
  " '.shellescape(<q-args>), 1, <bang>0 ? fzf#vim#with_preview('up:65%') : fzf#vim#with_preview('right:50%:hidden', '?'), <bang>0)"
)

-- global
opt('o', 'autoread', true)
opt('o', 'backspace', 'indent,eol,start')
opt('o', 'backup', false)
opt('o', 'clipboard', 'unnamedplus')
opt('o', 'completeopt', 'menuone,noinsert,noselect')
opt('o', 'encoding', 'UTF-8')
opt('o', 'fillchars', 'vert:|')
opt('o', 'foldlevelstart', 99)
opt('o', 'hidden', true)
opt('o', 'hidden', true)
opt('o', 'hlsearch', true)
opt('o', 'ignorecase', true)
opt('o', 'incsearch', true)
opt('o', 'joinspaces', false)
opt('o', 'mouse', 'a')
opt('o', 'regexpengine', 1)
opt('o', 'scrolloff', 3)
opt('o', 'shortmess', scopes.o.shortmess .. 'c')
opt('o', 'showcmd', true)
opt('o', 'sidescrolloff', 10)
opt('o', 'smartcase', true)
opt('o', 'smarttab', true)
opt('o', 'splitbelow', true)
opt('o', 'splitright', true)
opt('o', 'swapfile', false)
opt('o', 'termguicolors', true)
opt('o', 'ttyfast', true)
opt('o', 'updatetime', 300)
opt('o', 'viewoptions', 'options')
opt('o', 'whichwrap', 'b,<,>,[,],l,h')
opt('o', 'wildmenu', true)

-- window
opt('w', 'breakindent', true)
opt('w', 'foldmethod', 'expr')
opt('w', 'foldexpr', 'nvim_treesitter#foldexpr()')
opt('w', 'foldnestmax', 10)
opt('w', 'number', true)
opt('w', 'relativenumber', true)
opt('w', 'wrap', false)

-- buffer
opt('b', 'tabstop', 2)
opt('b', 'shiftwidth', 2)
opt('b', 'cindent', true)
opt('b', 'expandtab', true)
opt('b', 'smartindent', true)
opt('b', 'synmaxcol', 200)
opt('b', 'textwidth', 100)
