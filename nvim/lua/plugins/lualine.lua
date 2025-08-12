return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function()
    require("lualine").setup({
      options = {
        theme = {
          normal = {
            a = { bg = "NONE" },
            b = { bg = "NONE" },
            c = { bg = "NONE" },
            x = { bg = "NONE" },
            y = { bg = "NONE" },
            z = { bg = "NONE" },
          },
        },
        component_separators = "",
        section_separators = "",
        globalstatus = false,
        transparent = true,
      },
      sections = {
        lualine_a = {
          {
            function()
              local mode = vim.fn.mode()
              if mode == "n" then
                return ""
              else
                return vim.fn.mode()
              end
            end,
          },
        },
        lualine_b = {
          {
            function()
              -- Show macro recording
              local recording = vim.fn.reg_recording()
              if recording ~= "" then
                return "recording @" .. recording
              end
              return ""
            end,
          },
        },
        lualine_c = {
          {
            function()
              -- Show search pattern
              local search = vim.fn.getreg("/")
              if search ~= "" and vim.v.hlsearch == 1 then
                return "/" .. search
              end
              return ""
            end,
          },
        },
        lualine_x = {
          {
            function()
              -- Show file info only when relevant
              local filename = vim.fn.expand("%:t")
              if filename == "" then
                return ""
              end
              local modified = vim.bo.modified and "●" or ""
              return filename .. modified
            end,
          },
        },
        lualine_y = {},
        lualine_z = {},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      extensions = {},
    })
  end,
}
