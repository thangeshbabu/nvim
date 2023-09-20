return {
    {
      "mbbill/undotree",
      lazy = true,
      cmd = "UndotreeToggle",
      keys = {
        { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Undotree Toggle" },
      },
    },

    {
    'dhruvasagar/vim-zoom',
    lazy = true,
    config = function()
        require('Zoom').setup()
    end
    },

     {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },

    {
	    "lukas-reineke/indent-blankline.nvim",
        config=function ()

            vim.opt.list = true
            vim.opt.listchars:append "space:⋅"
            vim.opt.listchars:append "eol:↴"

            require("indent_blankline").setup {
                space_char_blankline = " ",
                show_current_context = true,
                show_current_context_start = true,
            }
            
        end,

    },
    

}


