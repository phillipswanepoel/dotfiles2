return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    -- Quick model switching keymaps
    { "<leader>ac", "<cmd>CodeCompanionChat<cr>", desc = "Chat" },
    { "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Chat Toggle" },
  },
  opts = {
    log_level = "DEBUG",
    workspace_root_dirs = { ".git" },
    strategies = {
      chat = {
        adapter = "openrouter",
        slash_commands = {
          ["file"] = {
            opts = {
              provider = "snacks",
            },
          },
          -- ["buffer"] = {
          --   opts = {
          --     provider = "snacks",
          --   },
          -- },
        },
      },
    },
    adapters = {
      openrouter = function()
        return require("codecompanion.adapters").extend("openai_compatible", {
          env = {
            api_key = os.getenv("OPENROUTER_API_KEY"),
          },
          url = "https://openrouter.ai/api/v1/chat/completions",
          name = "Openrouter",
          schema = {
            model = {
              --default = "google/gemini-2.0-flash-001",
              default = "google/gemini-2.5-flash-preview",
            },
          },
          headers = {
            ["HTTP-Referer"] = "http://localhost:3000",
            ["X-Title"] = "CodeCompanion.nvim",
          },
        })
      end,
    },
  },
}
