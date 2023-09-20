return {
	-- add gruvbox
	{
		"morhetz/gruvbox",

	config = function()
		vim.g.gruvbox_contrast_dark="hard"
		vim.g.gruvbox_termcolors="256"
        --vim.g.gruvbox_hls_cursor="Orange"

	end,

	},

	-- Configure LazyVim to load gruvbox
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox",
		},

k
	},
}
