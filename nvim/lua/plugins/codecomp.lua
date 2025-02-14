return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    -- Quick model switching keymaps
    { "<leader>ac", "<cmd>CodeCompanionChat<cr>", desc = "Chat (Claude)" },
    { "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Chat Toggle" },
  },
  opts = {
    log_level = "DEBUG",
    workspace_root_dirs = { ".git" },
    strategies = {
      chat = {
        adapter = "openrouter",
        -- Default strategy uses Claude
        -- model = "anthropic/claude-3-sonnet",
      },
      -- Additional strategy for quick/simple queries
      quick = {
        adapter = "openrouter",
        --model = "google/gemini-flash-1.5",
        --system_message = "You are a helpful AI coding assistant. Be concise and direct.",
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
              --default = "anthropic/claude-3.5-sonnet",
              --default = "deepseek/deepseek-chat",
              --default = "deepseek/deepseek-r1",
              default = "google/gemini-2.0-flash-001",
              --default = "google/gemini-2.0-flash-thinking-exp:free",
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
