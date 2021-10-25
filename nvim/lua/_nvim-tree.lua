-- Shortcuts
vim.api.nvim_set_keymap('', 'ff', ':NvimTreeFindFile<cr>', {})

require('nvim-tree').setup({
  auto_close = true,
  view = {
    -- Width of the window, can be either a number (columns) or a string in `%`, for left or right side placement
    width = 30,
    -- Height of the window, can be either a number (columns) or a string in `%`, for top or bottom side placement
    height = 30,
    -- Hide the root path of the current folder on top of the tree 
    hide_root_folder = false,
    -- Side of the tree, can be one of 'left' | 'right' | 'top' | 'bottom'
    side = 'left',
    -- If true the tree will resize itself after opening a file
    auto_resize = true,
  }
})
