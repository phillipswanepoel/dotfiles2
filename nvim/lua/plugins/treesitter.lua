return {
  "nvim-treesitter/nvim-treesitter",
  priority = 1000,
  dependencies = { "OXY2DEV/markview.nvim" },
  opts = {
    ensure_installed = {
      "gdscript", -- Add GDScript
      "lua",
      "python", -- Add other needed languages
    },
    highlight = {
      enable = true,
    },
  },
}
