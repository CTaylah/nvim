-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use({ "rose-pine/neovim", as = "rose-pine",
  config = function()
	  vim.cmd('colorscheme rose-pine')
  end
  })

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use({"williamboman/mason-lspconfig.nvim"})
  use({"williamboman/mason.nvim"})
  use({'neovim/nvim-lspconfig'})

  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-cmdline'})
  use({'hrsh7th/cmp-nvim-lsp'})

  use({'folke/noice.nvim',
    requires = { {'MunifTanjim/nui.nvim'} }
  })

  use({
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  })

end)
