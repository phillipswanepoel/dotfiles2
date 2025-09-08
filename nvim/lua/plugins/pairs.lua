return {
  "echasnovski/mini.pairs",
  config = function(_, opts)
    -- First, run the default setup for mini.pairs with its options
    require("mini.pairs").setup(opts)

    -- After the default setup, we override the keymaps for '(' and '['
    -- This simply maps the key to insert the character itself, bypassing the auto-pair.
    vim.keymap.set("i", "(", "(", { remap = true })
    vim.keymap.set("i", "[", "[", { remap = true })
  end,
}
