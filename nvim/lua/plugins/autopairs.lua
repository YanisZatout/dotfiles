return {
  -- Disable LazyVim's default pairs
  { "nvim-mini/mini.pairs", enabled = false },
  
  -- Enable your preferred autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}
  }
}
