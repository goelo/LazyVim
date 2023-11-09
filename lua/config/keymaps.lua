-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local g = vim.g
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-------- normal mode -----------
map("n", "<D-j>", "9j", opt)
map("n", "<D-k>", "9k", opt)
map("n", "<D-s>", ":w<CR>", opt)
map("n", "<D-v>", '"+P', opt) -- Paste normal mode
-------- insert mode -----------
map("i", "jk", "<ESC>", opt)
map("i", "<D-v>", "<C-R>+", opt) -- Paste insert mode
map("i", "<D-s>", "<ESC>:w<CR>", opt)
-------- other mode  -----------
map("v", "<D-c>", '"+y', opt) -- Copy
map("v", "<D-v>", '"+P', opt) -- Paste visual mode
map("c", "<D-v>", "<C-R>+", opt) -- Paste command mode
if g.neovide then
  g.neovide_cursor_vfx_mode = "railgun"
  -- vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
  -- vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
  -- vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
  -- vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})
end
