local tree = require('nvim-tree')

-- Credit to https://stackoverflow.com/a/7615129
local function splitString(input, seperator)
  if seperator == nil then seperator = '%s' end

  local split = {}

  for str in string.gmatch(input, '([^' .. seperator .. ']+)') do
    table.insert(split, str)
  end

  return split
end

-- Custom function to open NvimTree
function OpenNvimTree()
  local currentBuffer = vim.api.nvim_buf_get_name(0)
  if currentBuffer == nil or currentBuffer == '' then
    if tree.open() then
      vim.cmd('winc p')
    else
      vim.cmd('NvimTreeOpen')
    end
  end

  local currentBufferArr = splitString(currentBuffer, '/')
  if currentBufferArr[#currentBufferArr] == 'NvimTree' then
    -- Switch to previous buffer
    vim.cmd('winc p')
  else
    vim.cmd('NvimTreeFindFile')
  end
end

-- Autoclose Neovim when tree is the last buffer
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
      vim.cmd "quit"
    end
  end
})

-- Shortcuts
vim.api.nvim_set_keymap('n', 'ff', ':lua OpenNvimTree() <cr>', {noremap = true})
vim.api.nvim_set_keymap('n', 'fc', ':NvimTreeClose<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', 'F', ':NvimTreeClose<cr>', {noremap = true})

require('nvim-tree').setup({
  hijack_cursor = true,
  update_focused_file = {enable = true},
  view = {
    -- Width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
    width = 30,
    -- Height of the window, can be either a number (columns) or a string in `%`, for top or bottom side placement
    height = 30,
    -- Hide the root path of the current folder on top of the tree
    hide_root_folder = true,
    -- Side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
    side = 'left',
  }
})
