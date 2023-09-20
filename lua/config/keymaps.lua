local opts = { noremap = true, silent = true }

-- custom keybindings
local keymap = vim.api.nvim_set_keymap



-- leader mapping
-- keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
-- vim.g.mapleader = " "

-- Reload configurations
keymap("n", "<leader>r", ':luafile %<Return>', { noremap = false, silent = false })


-- Disabling arrow keys
keymap("n", "<Up>", "<Nop>", { noremap = true, silent = true })
keymap("n", "<Down>", "<Nop>", { noremap = true, silent = true })
keymap("n", "<Right>", "<Nop>", { noremap = true, silent = true })
keymap("n", "<Left>", "<Nop>", { noremap = true, silent = true })

-- escapekey remapping to 'jk'
keymap("i", "jk", "<ESC>", { noremap = true })

-- Tab switching
keymap("n", "sh", "<C-w>h", { noremap = true, silent = true })
keymap("n", "sk", "<C-w>k", { noremap = true, silent = true })
keymap("n", "sj", "<C-w>j", { noremap = true, silent = true })
keymap("n", "sl", "<C-w>l", { noremap = true, silent = true })

-- buffer splits
keymap("n", "<leader>s", ":vsplit<Return>:Telescope git_files<Return>", { noremap = true, silent = true })
keymap("n", "ss", ":split<Return><C-w>w", { noremap = true, silent = true })
keymap("n", "sv", ":vsplit<Return>", { noremap = true, silent = true })

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", { noremap = true, silent = true })
keymap("n", "<C-Down>", ":resize +2<CR>", { noremap = true, silent = true })
keymap("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
keymap("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })

-- Vimfile mapping
keymap("n", "sf", ":VimFilerBufferDir<Return>", { noremap = true, silent = true })
keymap("n", "sF", ":VimFilerExplorer -find<Return>", { noremap = true, silent = true })
keymap("n", "sb", ":Unite buffer<Return>", { noremap = true, silent = true })

-- replace without replace the clipboard
keymap("x", "<leader>p", '"_dP', { noremap = false, silent = false })

-- Delete without copying to clipboard
keymap("n", "x", '"_x', { noremap = true, silent = false })
keymap("x", "x", '"_x', { noremap = true, silent = false })

keymap("n", "<leader>x", '"_dd', { noremap = false, silent = false })

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

    -- from primeagen
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<C-q>", "<cmd>cclose<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--  Autopair config
vim.g.AutoPairsShortcutBackInsert='<C-q>'
vim.g.AutoPairsShortcutFastWrap='<C-s>'


