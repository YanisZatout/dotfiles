-- return {
--   {
--     "saghen/blink.cmp",
--     opts = {
--       keymap = {
--         -- Keep default mappings but add C-j and C-k
--         ["<C-j>"] = { "select_next", "fallback" },
--         ["<C-k>"] = { "select_prev", "fallback" },
--       },
--     },
--   },
-- }
return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
      },
      snippets = {
        preset = "luasnip",
      },
    },
  },
}
