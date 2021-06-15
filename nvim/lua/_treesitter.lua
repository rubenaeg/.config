require('nvim-treesitter.configs').setup({
	ensure_installed = { 'javascript', 'typescript', 'yaml', 'python', 'json', 'lua' },
	matchup = {
		enable = true
	},
	context_commentstring = {
		enable = true,
	},
	highlight = {
		enable = true
	},
	indent = {
		enable = true
	},
	autotag = {
		enable = true
	},
})

