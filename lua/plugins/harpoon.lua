return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
    settings = {
      save_on_toggle = true,
    },
  },
  keys = function()
    local keys = {
      {
        "mf",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon File",
      },
      {
        "ml",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon Quick Menu",
      },
      {
        "<C-h>",
        function()
          require("harpoon"):list():select(1)
        end,
      },
      {
        "<C-j>",
        function()
          require("harpoon"):list():select(2)
        end,
      },
      {
        "<C-k>",
        function()
          require("harpoon"):list():select(3)
        end,
      },
      {
        "<C-l>",
        function()
          require("harpoon"):list():select(4)
        end,
      },
      {
        "<C-m>",
        function()
          require("harpoon"):list():select(5)
        end,
      },
      {
        "<C-p>",
        function()
          require("harpoon"):list():select(6)
        end,
      },
    }
    return keys
  end,
}
