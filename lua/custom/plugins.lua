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
			theme = 'hyper',
				config = {
    		  week_header = {
    		   enable = true,
    		  },
    		  shortcut = {
    		    { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
    		    {
    		      icon = ' ',
    		      icon_hl = '@variable',
    		      desc = 'Files',
    		      group = 'Label',
    		      action = 'Telescope find_files',
    		      key = 'f',
    		    },
    		    {
    		      desc = ' Projects',
    		      group = 'DiagnosticHint',
    		      action = 'Telescope neovim-project discover',
    		      key = 'p',
    		    },
    		    {
    		      desc = ' Resume last session',
    		      group = 'Number',
    		      action = 'NeovimProjectLoadRecent',
    		      key = 'l',
    		    },
    		  },
    		}
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
	{
	  "coffebar/neovim-project",
	  opts = {
	    projects = {
				"~/documents/repos/*",
	      "~/pr*ct*s/*", -- Includes projects and proyectos
	      "~/.config/*",
	    },
			datapath = "~/.cache/nvim/",
			last_session_on_startup = false
	  },
	  dependencies = {
	    { "nvim-lua/plenary.nvim" },
	    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
	    { "Shatur/neovim-session-manager" },
	  },
	  lazy = false,
	  priority = 100,
	},
  {
    'hardyrafael17/norminette42.nvim',
    lazy = false,
    config = function()
      require("norminette").setup ({
        maxErrorsToShow = 50
      })
    end
  },
	{
		'github/copilot.vim',
		lazy = false
	},
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
	config = function ()
      require "custom.configs.bufferline"
    end,
	--lazy = false
  }
}
return plugins
