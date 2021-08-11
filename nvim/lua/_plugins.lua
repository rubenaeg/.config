return require('packer').startup(function() 
	use 'wbthomason/packer.nvim'
	use 'DilanGMB/nebulous.nvim'
	use {
	  'hoob3rt/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use { 
	  'kyazdani42/nvim-tree.lua',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
  use { 
    'neoclide/coc.nvim',
    branch = 'release' 
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use 'glepnir/dashboard-nvim'
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && npx yarn install',
    ft = 'markdown'
  }
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  use 'windwp/nvim-autopairs'
end)
