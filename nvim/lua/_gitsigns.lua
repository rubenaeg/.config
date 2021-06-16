require('gitsigns').setup({
  keymaps = {
    -- Default keymap options
    noremap = true,
    buffer = true,

    ['n gn'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'"},
    ['n g-n'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'"},
    ['n gm'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'"},
    ['n g-m'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'"},

    ['n ga'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ['v ga'] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
    ['n gu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ['n gr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ['v gr'] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
    ['n gR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
    ['n gp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    ['n gb'] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',

    -- Text objects
    -- ['o ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
    -- ['x ih'] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>'
  }
})
