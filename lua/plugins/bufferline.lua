return {
  {
    "akinsho/bufferline.nvim",
    event = "BufRead",
    version = "*",
    dependencies = "DaikyXendo/nvim-material-icon",

    config = function()
      require("bufferline").setup({
        options = {
          -- separator_style = "slant",
        },
      })
    end,
    -- enabled = false,
  },
  -- {
  --   "nvim-mini/mini.tabline",
  --   event = "VeryLazy",
  --
  --
  --   opts = {
  --     show_icons = true,
  --
  --     -- Function which formats the tab label
  --     -- By default surrounds with space and possibly prepends with icon
  --     format = nil,
  --
  --     -- Where to show tabpage section in case of multiple vim tabpages.
  --     -- One of 'left', 'right', 'none'.
  --     tabpage_section = "right",
  --   },
  -- },
}
