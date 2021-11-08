require('telescope').setup({
  defaults = { file_ignore_patterns = { 'node_modules', 'dist', 'package-lock.json' } },
  set_env = { ['COLORTERM'] = 'truecolor' },
  file_previewer = require('telescope.previewers').vim_buffer_cat.new,
  grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
})

-- Shortcuts
vim.api.nvim_set_keymap('n', 'tf', ':Telescope find_files<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tg', ':Telescope live_grep<cr>', { noremap = true })
