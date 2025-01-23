return {
  { -- Autoformat
    "stevearc/conform.nvim",
    lazy = true,
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        c = { "clang-format" },
        cpp = { "clang-format" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        htmldjango = { "djlint" },
        python = { "ruff" },
        bash = { "shfmt" },
        nix = { "nixfmt" },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
