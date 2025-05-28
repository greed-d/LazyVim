return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {},
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    -- "rcarriga/nvim-notify",
  },
  config = function()
    require("noice").setup({
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
      lsp = {
        progress = {
          enabled = false,
          -- Lsp Progress is formatted using the builtins for lsp_progress. See config.format.builtin
          -- See the section on formatting for more details on how to customize.
          --- @type NoiceFormat|string
          format = "lsp_progress",
          --- @type NoiceFormat|string
          format_done = "lsp_progress_done",
          throttle = 1000 / 30, -- frequency to update lsp progress message
          view = "mini",
        },
      },
      -- views = {
      --   cmdline_popup = {
      --     position = {
      --       row = 5,
      --       col = "50%",
      --     },
      --     size = {
      --       width = 60,
      --       height = "auto",
      --     },
      --   },
      --   popupmenu = {
      --     relative = "editor",
      --     position = {
      --       row = 8,
      --       col = "50%",
      --     },
      --     size = {
      --       width = 60,
      --       height = 10,
      --     },
      --     border = {
      --       style = "rounded",
      --       padding = { 0, 1 },
      --     },
      --     win_options = {
      --       winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
      --     },
      --   },
      -- },
      -- cmdline = {
      --   view = "cmdline_popup", -- cmdline_popup, cmdline
      -- },
    })
  end,
}
