return {
  {
    "akinsho/bufferline.nvim",
    event = "BufRead",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",

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
