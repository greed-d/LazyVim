-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
local g = vim.g

g.minipairs_disable = true
g.snacks_animate = false
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "basedpyright"
--Vim Doge
g.doge_doc_standard_python = "reST"
vim.opt.pumblend = 0
vim.opt.winblend = 0
vim.opt.formatoptions:remove({ "c", "r", "o" }) -- Stop neovim from adding comments to new line
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"

-- NOTE: Configs after this are for NeoVide only

g.gui_font_default_size = 13
g.gui_font_size = vim.g.gui_font_default_size
g.gui_font_face = "JetBrainsMono NF"

g.neovide_cursor_animation_length = 0.06

g.neovide_text_gamma = 1.4
g.neovide_text_contrast = 0.3

g.neovide_padding_top = 10
g.neovide_padding_bottom = 10
g.neovide_padding_right = 10
g.neovide_padding_left = 10
