return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      inlay_hints = { enabled = false },
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        emmet_ls = {},
        ruff = {},
        basedpyright = {
          settings = {
            basedpyright = {
              typeCheckingMode = "standard",
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
    -- config = function()
    --   vim.api.nvim_create_autocmd("LspAttach", {
    --     group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
    --     callback = function(args)
    --       local client = vim.lsp.get_client_by_id(args.data.client_id)
    --       if client == nil then
    --         return
    --       end
    --       if client.name == "ruff" then
    --         -- Disable hover in favor of Pyright
    --         client.server_capabilities.hoverProvider = false
    --       end
    --     end,
    --     desc = "LSP: Disable hover capability from Ruff",
    --   })
    -- end,
  },
}
