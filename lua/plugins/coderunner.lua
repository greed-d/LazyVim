return {
  "dchae/canter.nvim",
  enabled = false,
  opts = {
    runners = {
      ["py"] = "python",
    },
    keymaps = {
      ["<A-B>"] = {
        cmd = ":CanterRun<CR>",
        desc = "Run current File",
      },
      ["<A-b>"] = {
        cmd = ":CanterWait<CR>",
        desc = "Run and wait",
      },
    },
  },
}
