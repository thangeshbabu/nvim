--  bootstarp lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath) --require('packer-plugins')


require("lazy").setup({
	spec = {
		-- add LazyVim and import its plugins
		-- { "LazyVim/LazyVim", import = "lazyvim.plugins" },

		-- additional plugins
		-- { import = "lazyvim.plugins.extras.coding.copilot" },
		-- { import = "lazyvim.plugins.extras.dap.core" },
		-- { import = "lazyvim.plugins.extras.dap.nlua" },
		-- { import = "lazyvim.plugins.extras.lang.go" },
		-- { import = "lazyvim.plugins.extras.lang.json" },
		-- { import = "lazyvim.plugins.extras.lang.tailwind" },
		-- { import = "lazyvim.plugins.extras.lang.typescript" },
		-- { import = "lazyvim.plugins.extras.test.core" },
		-- { import = "lazyvim.plugins.extras.ui.edgy" },
		-- { import = "lazyvim.plugins.extras.util.mini-hipatterns" },

		-- import all plugins from the plugins folder
		{ import = "plugins" },
	},
	defaults = {
		-- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
		-- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
		lazy = false,
		-- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
		-- have outdated releases, which may break your Neovim install.
		version = false, -- always use the latest git commit
		-- version = "*", -- try installing the latest stable version for plugins that support semver
	},
	-- cSpell:word tokyonight habamax
	install = { colorscheme = { "gruvbox-community/gruvbox" } },
	ui = {
		border = "single",
	},
	checker = { enabled = true }, -- automatically check for plugin updates
	performance = {
		rtp = {
			-- disable some rtp plugins
			disabled_plugins = {
				"gzip",
				-- "matchit",
				-- "matchparen",
				-- "netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
	"gruvbox-community/gruvbox",
	"wbthomason/packer.nvim",
	"tpope/vim-commentary",
	--	"shougo/vimfiler.vim",	"shougo/unite.vim",
	"neovim/nvim-lspconfig",
	"folke/which-key.nvim",
	"nvim-treesitter/nvim-treesitter",
	"jose-elias-alvarez/null-ls.nvim", --> inject lsp diagnistocs, formattings, code actions, and more ...,
	"tami5/lspsaga.nvim", --> icons for LSP diagnostics,
	"onsails/lspkind-nvim", --> vscode-like pictograms for neovim lsp completion items,
	"lewis6991/gitsigns.nvim",
	{ "nvim-lualine/lualine.nvim", dependencies = { "kyazdani42/nvim-web-devicons" } },
	"nvim-lua/plenary.nvim",
	"lukas-reineke/indent-blankline.nvim",
	"williamboman/mason.nvim", -- simple to use language server installer,
	"williamboman/mason-lspconfig.nvim",

	-- Cmp
	"hrsh7th/nvim-cmp", -- The completion plugin
	"hrsh7th/cmp-buffer", -- buffer completions
	"hrsh7th/cmp-path", -- path completions
	"saadparwaiz1/cmp_luasnip", -- snippet completions
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",

	-- Snippets
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- undotree
	"mbbill/undotree",
	"jiangmiao/auto-pairs",
	"dhruvasagar/vim-zoom",
})
