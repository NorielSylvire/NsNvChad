local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "Equilibris/nx.nvim",
    config = function()
      require('nx').setup {

      }
    end,
    dependencies = { {'nvim-telescope/telescope.nvim'}}
  },
  {
    'nvim-focus/focus.nvim',
    version = false
  },
	{
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
  {
    'hardyrafael17/norminette42.nvim',
    lazy = false,
    config = function()
      require("norminette").setup ({
        maxErrorsToShow = 50
      })
    end
  }
}
return plugins
