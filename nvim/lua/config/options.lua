-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable hiding of markup
vim.opt.conceallevel = 0

-- Copy indent of current line when inserting a new line
vim.opt.autoindent = false

-- Break lines at word boundaries
vim.opt.wrap = true
vim.opt.linebreak = true
-- Make _ count as word boundary
--vim.opt.iskeyword:remove("_")

vim.opt.shell = "/usr/bin/fish"

vim.opt.matchpairs:remove("(:),[:]")

--vim.o.guifont = "Source Code Pro:h13"
vim.o.guifont = "FiraCode Nerd Font:h13"

--neovide
vim.g.neovide_cursor_animate_in_insert_mode = false

-- font config examples
-- Hack:h14:i:#e-subpixelantialias:#h-

-- #e-X (available since 0.10.2) — Sets edge pixels to be drawn opaquely or with partial transparency, while X is a type of edging:
--
--     antialias (default)
--     subpixelantialias
--     alias
--
-- #h-X (available since 0.10.2) - Sets level of glyph outline adjustment, while X is a type of hinting:
--
--     full (default)
--     normal
--     slight
--     none

-- GODOT OPTIONS
local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = "gdscript", -- Godot script filetype
  callback = function()
    vim.bo.expandtab = false
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
  end,
})

require("config.fonts")

autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt.formatoptions:remove({ "c", "r", "o" })
  end,
})
