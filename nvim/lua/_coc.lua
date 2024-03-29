do
  local prettier = ':CocCommand prettier.formatFile'
  local formatters = {
    dart = 'DartFmt',
    lua = 'call LuaFormat()',
    javascript = prettier,
    typescript = prettier,
    markdown = prettier,
    json = prettier,
    html = prettier,
  }

  function formatFile()
    local fileType = vim.bo.filetype
    local formatter = formatters[fileType]
    if not formatter then
      print('No formatter could be found for files of type .' .. fileType)
    else
      local cmd = formatters[vim.bo.filetype]
      print(':' .. cmd)
      vim.cmd(cmd)
    end
  end
end

local function t(str)
  -- Adjust boolean arguments as needed
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.smart_tab()
  return vim.fn.pumvisible() == 1 and t('<C-n>') or t('<TAB>')
end

vim.api.nvim_set_keymap('i', '<TAB>', 'v:lua.smart_tab()',
                        {expr = true, noremap = true})

-- Shortcuts
-- Trigger auto completion
vim.api.nvim_set_keymap('i', '<c-space>', 'coc#refresh()',
                        {expr = true, noremap = true})
-- Go to definition
vim.api.nvim_set_keymap('n', 'cd', '<Plug>(coc-definition)', {silent = true})
-- Go to implementation
-- vim.api.nvim_set_keymap('n', 'ci', '<Plug>(coc-implementation)', { silent = true }) 
-- Find references
vim.api.nvim_set_keymap('n', 'cr', '<Plug>(coc-references)', {silent = true})

-- Format with prettier
vim.api.nvim_set_keymap('n', 'cp', ':lua formatFile() <cr>', {})
-- Rename symbol
vim.api.nvim_set_keymap('n', 'cn', '<Plug>(coc-rename)', {})
-- Fix
vim.api.nvim_set_keymap('n', 'cf', ':CocFix<cr>', {})

-- Set global plugins to install
vim.g.coc_global_extensions = {
  'coc-json', 'coc-eslint', 'coc-prettier', 'coc-tsserver', 'coc-flutter'
}
