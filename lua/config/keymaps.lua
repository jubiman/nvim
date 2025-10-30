-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-p>", ":lua Snacks.picker.projects()<CR>", { desc = "Projects" })
vim.keymap.set("n", "<leader>fp", ":lua Snacks.picker.projects()<CR>", { desc = "Projects" })
vim.keymap.set("n", "<leader>tfb", ":Telescope file_browser<CR>", { desc = "File Browser" })
vim.keymap.set("n", "<leader>fu", ":Telescope lsp_references<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-?>", ":WhichKey<CR>", { desc = "Which Key?" })
