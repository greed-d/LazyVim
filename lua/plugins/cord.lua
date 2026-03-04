return {
  "vyfor/cord.nvim",
  branch = "master",
  build = ":Cord update",
  opts = {
    display = {
      theme = "catppuccin",
      flavor = "dark",
      view = "full",
      swap_fields = false,
      swap_icons = false,
    },
  }, -- calls require('cord').setup()
}
