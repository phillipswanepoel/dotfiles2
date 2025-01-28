-- Function to get current font size
local function get_font_size()
  local font = vim.o.guifont
  return tonumber(font:match(":h(%d+)")) or 12
end

-- Function to set font size
local function set_font_size(size)
  local font = vim.o.guifont
  local font_name = font:match("^[^:]+")
  vim.o.guifont = string.format("%s:h%d", font_name, size)
end

-- Function to adjust font size
local function adjust_font_size(delta)
  if not vim.g.neovide then
    return
  end
  local size = get_font_size()
  set_font_size(size + delta)
end

-- Set up the keymaps
local function setup_font_keymaps()
  -- Normal mode mappings
  vim.keymap.set("n", "<kPlus>", function()
    adjust_font_size(1)
  end, { desc = "Increase font size" })

  vim.keymap.set("n", "<kMinus>", function()
    adjust_font_size(-1)
  end, { desc = "Decrease font size" })

  -- Insert mode mappings
  vim.keymap.set("i", "<C-kPlus>", function()
    adjust_font_size(1)
  end, { desc = "Increase font size" })

  vim.keymap.set("i", "<C-kMinus>", function()
    adjust_font_size(-1)
  end, { desc = "Decrease font size" })
end

-- Only set up if we're in Neovide
if vim.g.neovide then
  setup_font_keymaps()
end
