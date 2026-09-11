return {
  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      layout = {
        max_width = { 40, 0.2 },
        default_direction = "right",
      },
    },
    keys = {
      { "<leader>z", "<cmd>AerialToggle!<CR>", desc = "Toggle Symbols Outline" },
    },
  },
}
