return {
  "nvim-treesitter/nvim-treesitter",
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

