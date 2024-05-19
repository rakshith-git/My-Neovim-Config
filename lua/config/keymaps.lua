-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/mahn/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>m", "<cmd>UndotreeToggle<cr><cmd>UndotreeFocus<cr>", { desc = "Toggle undotree" })
vim.keymap.set("i", "jj", "<Esc>", { desc = "leave insert mode" })
vim.keymap.set("v", "<leader>cs", "<cmd>CodeSnap<cr>", { desc = "Take a Snap" })

vim.api.nvim_set_keymap(
  "n",
  "<leader>cp",
  ":lua compile_and_run_cpp()<CR>",
  { desc = "run C++", noremap = true, silent = true }
)
