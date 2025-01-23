-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local del = vim.keymap.del
local map = vim.keymap.set

del("n", "<leader>ff")
del("n", "<leader>ft")
del("n", "<leader>fm")
del("n", "<leader>gg")
del("n", "<leader>gG")
del("n", "<leader>gl")
del("n", "<leader>sn")
-- del("n", "<leader>h")
del("n", "<S-h>")
del("n", "<S-l>")

-- Oil
map("n", "-", "<cmd>Oil<CR>", { desc = "Toggle [O]il" })

map({ "n", "v", "x" }, "<S-h>", "^", { desc = "Move to front of line" })
map({ "n", "v", "x" }, "<S-l>", "$", { desc = "Move to end of line" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "file save" })
map("n", "<C-d>", "<C-d>zz", { desc = "file save" })
map("n", "<C-u>", "<C-u>zz", { desc = "file save" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "file copy whole" })

map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Terminal Stuff
map("n", "<M-I>", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })
map({ "n", "t" }, "<M-i>", function()
  Snacks.terminal.toggle(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })
-- Terminal Mappings
map("t", "<M-i>", "<cmd>close<cr>", { desc = "Hide Terminal" })
--
-- lazygit
if vim.fn.executable("lazygit") == 1 then
  map("n", "<leader>lg", function()
    Snacks.lazygit({ cwd = LazyVim.root.git() })
  end, { desc = "Lazygit (Root Dir)" })
  map("n", "<leader>lG", function()
    Snacks.lazygit()
  end, { desc = "Lazygit (cwd)" })
  map("n", "<leader>gf", function()
    Snacks.lazygit.log_file()
  end, { desc = "Lazygit Current File History" })
  map("n", "<leader>gl", function()
    Snacks.lazygit.log({ cwd = LazyVim.root.git() })
  end, { desc = "Lazygit Log" })
  map("n", "<leader>gL", function()
    Snacks.lazygit.log()
  end, { desc = "Lazygit Log (cwd)" })
end

-- Git Stuff
map("n", "<leader>gb", function()
  Snacks.git.blame_line()
end, { desc = "Git Blame Line" })
map({ "n", "x" }, "<leader>gB", function()
  Snacks.gitbrowse()
end, { desc = "Git Browse (open)" })

--Buffer Stuff
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bk", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })
map("n", "<leader>bo", function()
  Snacks.bufdelete.other()
end, { desc = "Delete Other Buffers" })

map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

map({ "n", "v", "i", "t" }, "<M-b>", function()
  local terminal = require("nvterm.terminal")
  local file = vim.fn.expand("%")
  local sfile = vim.fn.expand("%:r")
  local ft_cmds = {
    sh = "bash " .. file,
    rust = "cargo " .. file,
    python = "python3 " .. file,
    javascript = "node " .. file,
    java = "javac " .. file .. " && java " .. sfile,
    go = "go build && go run " .. file,
    c = "g++ " .. file .. " -o " .. sfile .. " && ./" .. sfile,
    cpp = "g++ " .. file .. " -o " .. sfile .. " && ./" .. sfile,
    typescript = "deno compile " .. file .. " && deno run " .. file,
  }

  -- Save current buffer
  local current_bufnr = vim.fn.bufnr("%")
  vim.cmd("w")

  -- Open terminal and run command
  terminal.send(ft_cmds[vim.bo.ft], "float")

  -- Focus back to terminal window
  vim.cmd("wincmd p")
end, { desc = "Build and Run file" })
