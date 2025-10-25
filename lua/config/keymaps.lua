-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<A-p>", ":NeovimProjectDiscover<CR>", { desc = "Discover Projects" })
vim.keymap.set("n", "<C-p>", ":NeovimProjectHistory<CR>", { desc = "Project History" })
