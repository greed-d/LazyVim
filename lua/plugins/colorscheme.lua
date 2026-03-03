return {
  -- add tokyonight
  -- {
  --   "folke/tokyonight.nvim",
  --   opts = {
  --     style = "night",
  --     on_highlights = function(hl, c)
  --       hl.FloatBorder = { fg = "#45475A", bg = "NONE" }
  --       hl.SnacksPickerTitle = { bg = "#7aa2f7", fg = "#1f2335" }
  --       hl.SnacksPickerPreview = { bg = "#1a1b26" }
  --       hl.SnacksPickerList = { bg = "#1a1b26" }
  --       hl.SnacksPickerListTitle = { bg = "#9ece6a", fg = "#1f2335" }
  --       hl.SnacksPickerInputTitle = { bg = "#f7768e", fg = "#1f2335" }
  --       hl.SnacksPickerInputBorder = { bg = "#1a1b26", fg = "#45475a" }
  --       hl.SnacksPickerInputSearch = { bg = "#f7768e", fg = "#1f2335" }
  --       hl.SnacksPickerInput = { bg = "#1a1b26" }
  --     end,
  --   },
  -- },
  {
    "catppuccin/nvim",
    opts = {
      flavour = "mocha",
    },
    config = function()
      local function set_highlight(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
      end
      local mocha = require("catppuccin.palettes").get_palette("mocha")

      set_highlight("FloatBorder", { bg = "NONE", fg = mocha.surface0 })
      set_highlight("SnacksPickerTitle", { bg = mocha.blue, fg = mocha.crust })
      set_highlight("SnacksPickerPreview", { bg = mocha.mantle })
      set_highlight("SnacksPickerPreviewBorder", { bg = mocha.mantle, fg = mocha.mantle })
      set_highlight("SnacksPickerList", { bg = mocha.mantle })
      set_highlight("SnacksPickerListTitle", { bg = mocha.green, fg = mocha.crust })
      set_highlight("SnacksPickerListBorder", { fg = mocha.base, bg = mocha.base })
      set_highlight("SnacksPickerInputTitle", { bg = mocha.red, fg = mocha.crust })
      set_highlight("SnacksPickerInputBorder", { bg = mocha.base, fg = mocha.base })
      set_highlight("SnacksPickerInputSearch", { bg = mocha.red, fg = mocha.base })
      set_highlight("SnacksPickerInput", { bg = mocha.base })
      set_highlight("BlinkCmpMenu", { bg = "#191828" })
      set_highlight("LineNr", { fg = "#45475B" })
      set_highlight("CursorLineNr", { fg = "#B4BEFF" })
      -- set_highlight("BlinkCmpMenuBorder", { fg = "#191828", bg = "#191828" })
      set_highlight("BlinkCmpDocBorder", { fg = "#252434", bg = "#252434" })
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
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
