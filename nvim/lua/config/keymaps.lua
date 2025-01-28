-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Insert mode bindings
vim.keymap.set('i', 'jk', '<Esc>', { desc = "Exit insert mode with 'jk'" })
vim.keymap.set('i', 'kj', '<Esc>', { desc = "Exit insert mode with 'kj'" })

-- Normal mode bindings
vim.keymap.set('n', 'o', 'o<Esc>', { desc = "Exit insert mode with 'kj'" })

-- Terminal mode bindings
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { desc = "Exit terminal mode with Esc" })
vim.keymap.set('t', '<C-q>', [[<C-\><C-n>]], { desc = "Exit terminal mode with Ctrl-q" })

