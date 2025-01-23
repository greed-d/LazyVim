return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "DaikyXendo/nvim-material-icon",
    },
    keys = {
      {
        "\\",
        function()
          require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
        end,
        desc = "Explorer NeoTree (Root Dir)",
      },
      {
        "<leader>fm",
        "<cmd>Neotree focus<cr>",
        desc = "Neotree focus",
      },
    },
    config = function()
      require("neo-tree").setup({
        window = {
          position = "right",
          width = 30,
        },
      })
    end,
  },
}
