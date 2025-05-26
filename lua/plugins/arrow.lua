return {
  "otavioschwanck/arrow.nvim",
  dependencies = {
    { "nvim-tree/nvim-material-icon" },
    -- or if using `mini.icon
    -- { "echasnovski/mini.icons" },
  },
  opts = {
    show_icons = true,
    leader_key = "'", -- Recommended to be a single key
    buffer_leader_key = "m", -- Per Buffer Mappings
  },
}
