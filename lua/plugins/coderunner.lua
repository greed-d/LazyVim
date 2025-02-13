return {
  "dchae/canter.nvim",
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
