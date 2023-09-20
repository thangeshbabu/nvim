
-- Base64 encoding/decoding plugin for Neovim

-- Author: <Your Name Here>

local M = {}

-- Encode selected text to base64
function M.encode_base64()
    -- Get the selected text
    local selection = vim.fn.getreg('"')

    -- Encode the text
    local encoded_text = vim.fn.base64encode(selection)

    -- Replace selection with encoded text
    vim.fn.setreg('"', encoded_text)
end

-- Decode selected base64 to text
function M.decode_base64()
    -- Get the selected text
    local selection = vim.fn.getreg('"')

    -- Decode the text
    local decoded_text = vim.fn.base64decode(selection)

    -- Replace selection with decoded text
    vim.fn.setreg('"', decoded_text)
end

-- Map keys
vim.api.nvim_set_keymap('v', '<leader>e', "<cmd>base64-config.encode_base64()<CR>", { silent = true })
vim.api.nvim_set_keymap('v', '<leader>d', "<cmd>base64-config.decode_base64()<CR>", { silent = true })

return M
