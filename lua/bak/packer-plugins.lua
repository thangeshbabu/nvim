 return require ('packer').startup(function()
	 use 'wbthomason/packer.nvim'
	 use 'gruvbox-community/gruvbox'
	 use 'tpope/vim-commentary'
	 use 'shougo/vimfiler.vim'
	 use 'shougo/unite.vim'
	 use 'neovim/nvim-lspconfig'
	 use "folke/which-key.nvim"
	 use { "nvim-treesitter/nvim-treesitter"}
	 use("jose-elias-alvarez/null-ls.nvim") --> inject lsp diagnistocs, formattings, code actions, and more ...
	 use("tami5/lspsaga.nvim") --> icons for LSP diagnostics
	 use("onsails/lspkind-nvim") --> vscode-like pictograms for neovim lsp completion items
	 use 'lewis6991/gitsigns.nvim'
	 use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
	 use ("nvim-lua/plenary.nvim")
	 use "lukas-reineke/indent-blankline.nvim"
	 use { "williamboman/mason.nvim"} -- simple to use language server installer
  	 use { "williamboman/mason-lspconfig.nvim" }

	-- Cmp 
    use { "hrsh7th/nvim-cmp", commit = "b0dff0ec4f2748626aae13f011d1a47071fe9abc" } -- The completion plugin
    use { "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" } -- buffer completions
    use { "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" } -- path completions
    use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" } -- snippet completions
    use { "hrsh7th/cmp-nvim-lsp", commit = "3cf38d9c957e95c397b66f91967758b31be4abe6" }
    use { "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" }

	-- Snippets
    use { "L3MON4D3/LuaSnip", commit = "8f8d493e7836f2697df878ef9c128337cbf2bb84" } --snippet engine
    use { "rafamadriz/friendly-snippets", commit = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" } -- a bunch of snippets to use

	 -- telescope
     use {
         'nvim-telescope/telescope.nvim', tag = '0.1.0',
         requires = { {'nvim-lua/plenary.nvim'} }
     }

     -- undotree
     use ('mbbill/undotree')
     use ('jiangmiao/auto-pairs')
     use ('dhruvasagar/vim-zoom')
    
     -- Vim fugitive
     use('tpope/vim-fugitive')
        
     -- telescope file browser
     use { "nvim-telescope/telescope-file-browser.nvim", requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" } }


end)


