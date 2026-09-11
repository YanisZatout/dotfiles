-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- ~/.config/nvim/lua/config/options.lua
local opt = vim.opt

opt.cmdheight = 2
opt.wrap = false

opt.scrolloff = 8
opt.sidescrolloff = 8
opt.guifont = "monospace:h17"
-- opt.colorcolumn = table.concat(vim.fn.range(81, 999), ",")
vim.g.autoformat = false
vim.g.maplocalleader = " "
vim.opt.clipboard = "unnamedplus"
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = ""
