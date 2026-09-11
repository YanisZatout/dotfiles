return {
  { "nvim-mini/mini.animate", enabled = false },
  { "folke/snacks.nvim", opts = { scroll = { enabled = false } } },
  { "akinsho/bufferline.nvim", opts = { options = { always_show_bufferline = true } } },
  {

    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local winbar_components = {
        lualine_c = {
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { "filename" },
        },
      }
      opts.winbar = winbar_components
      opts.inactive_winbar = winbar_components
    end,
  },
}
