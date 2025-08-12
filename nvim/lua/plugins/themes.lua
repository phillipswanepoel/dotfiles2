return {
  { "folke/tokyonight.nvim", name = "tokyonight" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "ellisonleao/gruvbox.nvim", name = "gruvbox" },
  { "EdenEast/nightfox.nvim", name = "nightfox" },
  { "sainnhe/everforest", name = "everforest" },
  { "Mofiqul/dracula.nvim", name = "dracula" },
  { "loctvl842/monokai-pro.nvim", name = "monokai-pro" },
  { "sainnhe/sonokai", name = "sonokai" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "olimorris/onedarkpro.nvim", name = "onedark" },

  -- Configure LazyVim to load onedark
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
