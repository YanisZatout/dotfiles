return {
  {
    "folke/snacks.nvim",
    opts = {
      notifier = { enabled = false },
      picker = {
        actions = {
          explorer_custom_l = function(picker, item)
            if not item then
              return
            end
            -- Check if cursor is on the root directory
            if item.file == picker:cwd() then
              picker:action("explorer_up")
            else
              picker:action("confirm")
            end
          end,
          explorer_custom_h = function(picker, item)
            if not item then
              return
            end
            -- Check if cursor is on the root directory
            if item.file == picker:cwd() then
              picker:action("explorer_up")
            else
              picker:action("explorer_close")
            end
          end,
        },
        sources = {
          explorer = {
            -- 1. Disable periodic cycling
            layout = { cycle = false },
            win = {
              list = {
                keys = {
                  -- Map the custom actions
                  ["l"] = "explorer_custom_l",
                  ["h"] = "explorer_custom_h",
                },
              },
            },
          },
        },
      },
    },
  },
}
