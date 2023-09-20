require('lazy').setup({
 
	 'wbthomason/packer.nvim',
	 'gruvbox-community/gruvbox',
	 'tpope/vim-commentary',
	 'shougo/vimfiler.vim',
	 'shougo/unite.vim',
	 'neovim/nvim-lspconfig',
	 "folke/which-key.nvim",
	  "nvim-treesitter/nvim-treesitter",
	 "jose-elias-alvarez/null-ls.nvim", --> inject lsp diagnistocs, formattings, code actions, and more ...,
	 "tami5/lspsaga.nvim", --> icons for LSP diagnostics,
	 "onsails/lspkind-nvim", --> vscode-like pictograms for neovim lsp completion items,
	 'lewis6991/gitsigns.nvim',
	 { 'nvim-lualine/lualine.nvim', dependencies = { 'kyazdani42/nvim-web-devicons'} },
	 "nvim-lua/plenary.nvim",
	 "lukas-reineke/indent-blankline.nvim",
	 "williamboman/mason.nvim", -- simple to use language server installer,
  	 "williamboman/mason-lspconfig.nvim",

	-- Cmp 
    "hrsh7th/nvim-cmp",  -- The completion plugin
    "hrsh7th/cmp-buffer", -- buffer completions
    "hrsh7th/cmp-path", -- path completions
    "saadparwaiz1/cmp_luasnip",-- snippet completions
    "hrsh7th/cmp-nvim-lsp", 
    "hrsh7th/cmp-nvim-lua",

	-- Snippets
    "L3MON4D3/LuaSnip", 
    "rafamadriz/friendly-snippets",

	 -- telescope
     {
        'nvim-telescope/telescope.nvim',dependencies = { 'nvim-lua/plenary.nvim' }
     },

     -- undotree
    'mbbill/undotree',
    'jiangmiao/auto-pairs',
    'dhruvasagar/vim-zoom',
})

