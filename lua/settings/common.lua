local scopes = { o = vim.o, b = vim.bo, w = vim.wo }

local function opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end

vim.python_host_prog  = '$HOME/.asdf/shims/python2'
vim.python3_host_prog = '$HOME/.asdf/shims/python3'

vim.loaded_netrw       = 1
vim.loaded_netrwPlugin = 1

vim.cmd 'colorscheme PaperColor'
vim.cmd 'filetype plugin indent on'
vim.cmd 'syntax sync minlines=256'

opt('o', 'autoread', true)
opt('o', 'background', 'light')
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
opt('o', 'shiftwidth', 2)
opt('o', 'showcmd', true)
opt('o', 'smartcase', true)
opt('o', 'smarttab', true)
opt('o', 'splitbelow', true)
opt('o', 'splitright', true)
opt('o', 'swapfile', false)
opt('o', 'tabstop', 2)
opt('o', 'termguicolors', true)
opt('o', 'viewoptions', 'options')
opt('o', 'wildmenu', true)

opt('w', 'breakindent', true)
opt('w', 'foldmethod', 'indent')
opt('w', 'foldnestmax', 5)
opt('w', 'number', true)
opt('w', 'relativenumber', true)
opt('w', 'wrap', false)

opt('b', 'cindent', true)
opt('b', 'expandtab', true)
opt('b', 'smartindent', true)
opt('b', 'synmaxcol', 200)
opt('b', 'textwidth', 100)
