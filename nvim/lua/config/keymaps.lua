-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { silent = true }

-- Fast exit insert
map("i", "jk", "<ESC>", opts)

-- AZERTY Remaps
map("v", ";", ".", { noremap = true })
map("n", "m", "$", opts)
map("v", ".", ":normal.<CR>", { noremap = true })
map("n", "µ", "#", opts)
map("n", "²", ".", opts)

-- Incrementing and decrementing
map({ "n", "x" }, "+", "<C-a>", opts)
map({ "n", "x" }, "-", "<C-x>", opts)

-- Buffer navigation (Overrides LazyVim defaults if you prefer Shift over brackets)
map("n", "<S-l>", ":bnext<CR>", opts)
map("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear search highlights
map("n", "<Leader>x", ":let @/=''<CR>", opts)

-- Ctags / Tag jump
map({ "n", "v" }, "'", "<C-]>", opts)
pcall(vim.keymap.del, "n", "<leader>l")

vim.keymap.set("v", "p", '"_dP', { silent = true })

vim.keymap.set({ "n", "v" }, "<leader>=", function()
  LazyVim.format({ force = true })
end, { desc = "Format Document" })
