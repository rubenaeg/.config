vim.g.mapleader = " "

local function t(str)
  -- Adjust boolean arguments as needed
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_tab() 
  return vim.fn.pumvisible() == 1 and t('<C-n>') or t('<TAB>') 
end

vim.api.nvim_set_keymap('i', '<TAB>', 'v:lua.smart_tab()', { expr = true, noremap = true })
vim.api.nvim_set_keymap('i', '<c-space>', 'coc#refresh()', { expr = true, noremap = true })
vim.api.nvim_set_keymap('', 'cp', ':CocCommand prettier.formatFile<cr>', {}) 
vim.api.nvim_set_keymap('', 'ca', ':CocAction<cr>', {})
vim.api.nvim_set_keymap('', 'cd', '<Plug>(coc-definition)', { silent = true })
