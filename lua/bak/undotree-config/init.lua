-- vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
-- cSpell:ignore mbbill
return {
  "mbbill/undotree",
  lazy = true,
  cmd = "UndotreeToggle",
  keys = {
    { "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Undotree Toggle" },
  },
}

