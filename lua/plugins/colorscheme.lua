return {
  -- add tokyonight
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      on_highlights = function(hl, c)
        hl.FloatBorder = { fg = "#45475A", bg = "NONE" }
        hl.SnacksPickerTitle = { bg = "#7aa2f7", fg = "#1f2335" }
        hl.SnacksPickerPreview = { bg = "#1a1b26" }
        hl.SnacksPickerList = { bg = "#1a1b26" }
        hl.SnacksPickerListTitle = { bg = "#9ece6a", fg = "#1f2335" }
        hl.SnacksPickerInputTitle = { bg = "#f7768e", fg = "#1f2335" }
        hl.SnacksPickerInputBorder = { bg = "#1a1b26", fg = "#45475a" }
        hl.SnacksPickerInputSearch = { bg = "#f7768e", fg = "#1f2335" }
        hl.SnacksPickerInput = { bg = "#1a1b26" }
      end,
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}

-- return {
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       -- don't let LazyVim load a colorscheme
--       colorscheme = function() end,
--     },
--   },
-- }
