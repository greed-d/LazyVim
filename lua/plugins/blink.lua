return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      -- list = {
      --   selection = "auto_insert",
      -- },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 100,
        window = {
          border = "rounded",
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
        },
      },
      menu = {
        border = "rounded",
        draw = {
          columns = {
            { "label", gap = 2, "kind_icon" },
            { gap = 2, "source_name", "label_description" },
          },
        },
        winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
      },
    },
    keymap = {
      -- preset = "none",
      ["<Tab>"] = {},
      ["<S-Tab>"] = {},
      ["<C-l>"] = { "snippet_forward", "fallback" },
      ["<C-h>"] = { "snippet_backward", "fallback" },
    },
  },
}
