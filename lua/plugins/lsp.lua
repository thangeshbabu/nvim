return{
    
	'neovim/nvim-lspconfig',
    dependencies={
	 "williamboman/mason.nvim", -- simple to use language server installer,
  	 "williamboman/mason-lspconfig.nvim",

    },
    config=function()
        require('lsp-config')
    end,
    
    
}
