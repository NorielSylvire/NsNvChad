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
