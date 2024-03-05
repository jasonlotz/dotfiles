return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    { "<leader>m", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash search" },
    { "<leader>M", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter search" },
    { "<c-F>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle flash search" },
  },
}
