return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        emmet_ls = {},
        ruff = {},
        pyright = {
          settings = {
            pyright = {
              disableOrganizeImports = true, -- Using Ruff
            },
            python = {
              analysis = {
                ignore = { "*" }, -- Using Ruff
                -- typeCheckingMode = "off", -- Using mypy
              },
            },
          },
        },
      },
      diagnostics = {
        float = {
          border = "rounded",
        },
      },
    },
  },
}
