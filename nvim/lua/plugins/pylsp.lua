return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pylsp = {
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = {
                ignore = { "F401", "E721", "W504", "W503", "E203" },
                maxLineLength = 88,
              },
            },
          },
        },
      },
    },
  },
}
