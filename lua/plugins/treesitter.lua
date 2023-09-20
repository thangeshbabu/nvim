return{

    "nvim-treesitter/nvim-treesitter",
    config=function()

        local status_ok, configs = pcall(require, "nvim-treesitter.configs")
        if not status_ok then
            return
        end

        configs.setup({
          ensure_installed = { "bash", "json", "lua", "python", "yaml", "markdown" }, -- one of "all" or a list of languages
            ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
            highlight = {
                enable = true, -- false will disable the whole extension
                disable = { "css" }, -- list of language that will be disabled
            },
            autopairs = {
                enable = true,
            },
            indent = { enable = true, disable = { "python", "css" } },
        })
    end
}
-- return {
--   {
--     "nvim-treesitter/nvim-treesitter",
--     version = false, -- last release is way too old and doesn't work on Windows
--     build = ":TSUpdate",
--     event = "BufReadPost",
--     keys = {
--       { "<c-space>", desc = "Increment selection" },
--       { "<bs>", desc = "Schrink selection", mode = "x" },
--     },
--     ---@type TSConfig
--     opts = {
--       highlight = { enable = true },
--       indent = { enable = true },
--       context_commentstring = { enable = true, enable_autocmd = false },
--       ensure_installed = {
--         "bash",
--         "html",
--         "javascript",
--         "json",
--         "lua",
--         "markdown",
--         "markdown_inline",
--         "python",
--         "vim",
--         "yaml",
--       },
--       incremental_selection = {
--         enable = true,
--         keymaps = {
--           init_selection = "<C-space>",
--           node_incremental = "<C-space>",
--           scope_incremental = "<nop>",
--           node_decremental = "<bs>",
--         },
--       },
--     },
--     ---@param opts TSConfig
--     config = function(plugin, opts)
--       if plugin.ensure_installed then
--         require("lazyvim.util").deprecate("treesitter.ensure_installed", "treesitter.opts.ensure_installed")
--       end
--       require("nvim-treesitter.configs").setup(opts)
--     end,
--   },
-- }
--
