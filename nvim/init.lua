require('_plugins')
require('_lualine')
require('_nvim-tree')
require('_colorscheme')
require('_telescope')
require('_gitsigns')
require('_dashboard')
require('_coc')
require('_nvim-autopairs')

-- Indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 0
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.splitright = true
vim.opt.completeopt = { 'longest', 'menuone' }

-- Show line numbers
vim.opt.number = true

-- True colour support
vim.opt.termguicolors = true

-- Give more space for displaying messages
vim.opt.cmdheight = 2
vim.opt.updatetime = 100

vim.opt.showmode = false
-- Always show gutter
vim.opt.signcolumn = 'yes'

-- Set clipboard to system
vim.opt.clipboard = 'unnamedplus'

-- Allow for background buffers
vim.opt.hidden = true

-- Set leader key
vim.g.mapleader = " "

-- General shortcuts
vim.api.nvim_set_keymap('n', 'tz', ':tabnext<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tr', ':tabprevious<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tt', ':tabnew<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'T', ':tabclose<cr>', { noremap = true })
-- Allow faster window navigation
vim.api.nvim_set_keymap('n', 'wq', '<c-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', 'we', '<c-w>l', { noremap = true })

-- Allow arrow keys to change line
vim.opt.whichwrap = '<,>,[,]'
