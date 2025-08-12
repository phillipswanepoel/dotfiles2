return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        "tokyonight",
        "onedarkpro",
        "catppuccin",
        "gruvbox",
        "nightfox",
        "kanagawa",
        "everforest",
        "dracula",
        "monokai",
        "sonokai",
        "rose-pine",
      },
      livePreview = true,
    })
  end,
}
