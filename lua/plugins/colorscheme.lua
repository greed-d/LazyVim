-- local colorscheme = require("lazyvim.plugins.colorscheme")
return {
  "AlexvZyl/nordic.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nordic").load()
  end,
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
