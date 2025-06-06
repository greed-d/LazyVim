-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- NOTE : USE LUALINE LSP PROGRESS INSTEAD OF SHOWING IT IN NOTIFICATION

--Show lsp progress in notification
------@type table<number, {token:lsp.ProgressToken, msg:string, done:boolean}[]>
---local progress = vim.defaulttable()
--- NOTE: View LSP progress in notification, removes fidget.nvim

---vim.api.nvim_create_autocmd("LspProgress", {
---  ---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
---  callback = function(ev)
---    local client = vim.lsp.get_client_by_id(ev.data.client_id)
---    local value = ev.data.params.value --[[@as {percentage?: number, title?: string, message?: string, kind: "begin" | "report" | "end"}]]
---    if not client or type(value) ~= "table" then
---      return
---    end
---    local p = progress[client.id]
---
---    for i = 1, #p + 1 do
---      if i == #p + 1 or p[i].token == ev.data.params.token then
---        p[i] = {
---          token = ev.data.params.token,
---          msg = ("[%3d%%] %s%s"):format(
---            value.kind == "end" and 100 or value.percentage or 100,
---            value.title or "",
---            value.message and (" **%s**"):format(value.message) or ""
---          ),
---          done = value.kind == "end",
---        }
---        break
---      end
---    end
---
---    local msg = {} ---@type string[]
---    progress[client.id] = vim.tbl_filter(function(v)
---      return table.insert(msg, v.msg) or not v.done
---    end, p)
---
---    local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
---    vim.notify(table.concat(msg, "\n"), "info", {
---      id = "lsp_progress",
---      title = client.name,
---      opts = function(notif)
---        notif.icon = #progress[client.id] == 0 and " "
---          or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
---      end,
---    })
---  end,
---})
-- Hyprlang LSP
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.hl", "hypr*.conf" },
  callback = function(event)
    print(string.format("starting hyprls for %s", vim.inspect(event)))
    vim.lsp.start({
      name = "hyprlang",
      cmd = { "hyprls" },
      root_dir = vim.fn.getcwd(),
    })
  end,
})

RefreshGuiFont = function()
  vim.opt.guifont = string.format("%s:h%s", vim.g.gui_font_face, vim.g.gui_font_size)
end

ResizeGuiFont = function(delta)
  vim.g.gui_font_size = vim.g.gui_font_size + delta
  RefreshGuiFont()
end

ResetGuiFont = function()
  vim.g.gui_font_size = vim.g.gui_font_default_size
  RefreshGuiFont()
end

-- Call function on startup to set default value
ResetGuiFont()

map({ "n", "i" }, "<C-+>", function()
  ResizeGuiFont(1)
end, opts)
map({ "n", "i" }, "<C-->", function()
  ResizeGuiFont(-1)
end, opts)
map({ "n", "i" }, "<C-BS>", function()
  ResetGuiFont()
end, opts)
