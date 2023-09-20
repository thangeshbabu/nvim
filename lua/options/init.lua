local set = vim.opt

vim.g.gruvbox_contrast_dark = 'hard'

-- the primeagen

vim.opt.clipboard='unnamedplus'
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
set.cursorcolumn= true
set.cursorline= true
set.mouse="a"
set.splitright=true
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smartcase= true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")
-- vim.opt.completeopt=menu,menuone,noinsert,noselect,preview,longest
vim.opt.completeopt=noselect,noinsert,menu,menuone
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

-- From josh medeski ---

vim.opt.linebreak = true

-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3

-- Default splitting will cause your main splits to jump when opening an edgebar.
-- To prevent this, set `splitkeep` to either `screen` or `topline`.
vim.opt.splitkeep = "screen"



