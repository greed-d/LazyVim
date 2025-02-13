return {
  {
    "akinsho/bufferline.nvim",
    event = "BufRead",
    version = "*",
    dependencies = "DaikyXendo/nvim-material-icon",

    config = function()
      require("bufferline").setup({
        options = {
          separator_style = "slant",
        },
      })
    end,
    -- enabled = false,
  },
}
