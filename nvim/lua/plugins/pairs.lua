return {
  {
    "echasnovski/mini.pairs",
    enabled = false,
    opts = {
      mappings = {},
    },
  },
  {
    "altermo/ultimate-autopair.nvim",
    event = { "InsertEnter", "CmdlineEnter" },
    branch = "v0.6", --recommended as each new version will have breaking changes
    opts = {
      --Config goes here
      config_internal_pairs = {
        { "(", ")", imap = false, disable_end = true },
        { "[", "]", imap = false, disable_end = true },
      },
    },
  },
}
