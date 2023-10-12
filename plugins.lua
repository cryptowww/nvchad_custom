local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
		ft = "go",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },
  {
	  "olexsmir/gopher.nvim",
	  ft = "go",
	  config = function(_, opts)
		require("gopher").setup(opts)
		require("core.utils").load_mappings("gopher")
	  end,
	  build = function()
		  vim.cmd [[silent! GoInstallDeps]]
	  end,
  },
  {
	"mfussenegger/nvim-dap",
	init = function()
		require("core.utils").load_mappings("dap")
	end,
  },
  {
	"leoluz/nvim-dap-go",
	ft = "go",
	dependencies = "mfussenegger/nvim-dap",
	config = function(_, opts)
		require("dap-go").setup(opts)
		require("core.utils").load_mappings("dap_go")
	end,
  },

  -- github/copilot
  {
    "github/copilot.vim",
    cmd = {"Copilot", "Copilot status", "Copilot setup", "Copilot enable"},
    init = function()
      require("core.utils").lazy_load "copilot.vim"
    end,
  },
  {
    "ctrlpvim/ctrlp.vim",
    lazy = false,
  },
  {
	"HampusHauffman/block.nvim",
	config = function()
		require("block").setup({})
	end
  },
  {
	  "fatih/vim-go",
	  lazy = false,
	  --opts = overrides.vimgo,
  },
  -- override plugin configs
  {
    "williamboman/mason.nvim",
	opts = {
		ensure_installed = {
			"gopls",
		},
	},
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  -- coc
  {
	"neoclide/coc.nvim",
	branch="release",
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
