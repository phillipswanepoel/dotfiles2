return {
  { "folke/tokyonight.nvim", name = "tokyonight" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "EdenEast/nightfox.nvim", name = "nightfox" },
  { "Mofiqul/dracula.nvim", name = "dracula" },
  { "loctvl842/monokai-pro.nvim", name = "monokai-pro" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "xero/miasma.nvim", name = "miasma" },
  { "sainnhe/gruvbox-material", name = "gruvbox-material" },
  { "qaptoR-nvim/chocolatier.nvim", name = "chocolatier" },
  { "sainnhe/sonokai", name = "sonokai" },
  -- { "olimorris/onedarkpro.nvim", name = "onedark" },
  {
    "olimorris/onedarkpro.nvim",
    opts = {
      highlights = {
        -- Tree-sitter variable
        ["@variable"] = { fg = "#abb2bf" },
        -- For non-treesitter highlighting
        Identifier = { fg = "#abb2bf" },
      },
    },
  },
  { "sainnhe/everforest", name = "everforest" },
  { "ellisonleao/gruvbox.nvim", name = "gruvbox" },

  -- Configure LazyVim to load onedark
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
