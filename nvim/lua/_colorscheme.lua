require('nebulous').setup({
  variant = 'night',
  disable = {
    background = true,
  },
  italic = {
    comments   = false,
    keywords   = false,
    functions  = false,
    variables  = false,
  },
})

--[[
vim.g.material_style = 'darker'
require('material').setup({
  disable = {
		background = true, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = false -- Hide the end-of-buffer lines
	},
})
]]--
