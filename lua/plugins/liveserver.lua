return {
  {
    "barrett-ruth/live-server.nvim",
    build = "pnpm add -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    enabled = false,
    config = function()
      require("live-server").setup(opts)
    end,
  },
}
