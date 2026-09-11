-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Disable Kitty Keyboard Protocol to fix Alacritty double-triggering bug
vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Pop Kitty Keyboard Protocol",
  callback = function()
    io.stdout:write("\x1b[<u")
    io.stdout:flush()
  end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "tex", "typst" },
    callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
    end,
})
