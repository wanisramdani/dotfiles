-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --colorScheme
 	-- rose-pine
  use('rose-pine/neovim')
	-- tokyo-night
  use('folke/tokyonight.nvim')
   
  -- treesitter
  use {
		'nvim-treesitter/nvim-treesitter',		
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
  }
  use('nvim-treesitter/playground')
  use("nvim-treesitter/nvim-treesitter-context")

  -- dashboard
  use('glepnir/dashboard-nvim')
  
  -- undotree
  use('mbbill/undotree')
  
  -- GIT
  	-- fugitive 
  use('tpope/vim-fugitive')
    -- git signs 
  use('lewis6991/gitsigns.nvim')

  -- LSP
  -- lsp-zero
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }

  -- lsp-trouble
  use {
	  "folke/trouble.nvim",
	  requires = "nvim-tree/nvim-web-devicons",
	  config = function()
		  require("trouble").setup {
			  -- your configuration comes here
			  -- or leave it empty to use the default settings
			  -- refer to the configuration section below
		  }
	  end
  }

  -- lualine
  use('nvim-lualine/lualine.nvim')

  -- nvim-tree 
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional, for file icons
	  },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- bufferline (tabs)
 use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
 -- barbar 
 use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

 -- scrollbar
 use("petertriho/nvim-scrollbar")
 
 -- barbecue
 use({
	 "utilyre/barbecue.nvim",
	 tag = "*",
	 requires = {
		 "SmiteshP/nvim-navic",
		 "nvim-tree/nvim-web-devicons", -- optional dependency
	 },
	 after = "nvim-web-devicons", -- keep this if you're using NvChad
	 config = function()
		 require("barbecue").setup()
	 end,
 })

end)

